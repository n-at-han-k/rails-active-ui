# frozen_string_literal: true

# FomanticFormBuilder
#
# A Rails FormBuilder wrapping every helper in Fomantic-UI markup.
#
# All text-like input helpers (text_field, email_field, password_field, etc.)
# render a bare <input> element by default. Pass `field: true` to wrap the
# input in a Fomantic <div class="field"> with optional label, error, hint.
#
# Usage:
#
#   # Bare input (no wrapper):
#   TextField(:email, placeholder: "E-mail address")
#
#   # Wrapped in <div class="field"> with auto-label:
#   TextField(:email, field: true)
#
#   # Inside an Input wrapper for icon styling:
#   Input(icon: "user", icon_position: "left") {
#     TextField(:email, placeholder: "E-mail address")
#   }
#
# Field options (only used when field: true):
#   label:        String  – override label text (false to suppress label)
#   required:     Boolean – adds "required" class and asterisk
#   disabled:     Boolean – adds "disabled" class
#   readonly:     Boolean – adds "read-only" class
#   inline:       Boolean – label sits beside the input
#   width:        String  – Fomantic grid column word, e.g. "six", "three"
#   error:        String  – error message; adds "error" class + inline message
#   warning:      String  – warning message; adds "warning" class + inline message
#   hint:         String  – rendered as a small grey note beneath the input
#   field_class:  String  – extra classes on the wrapping .field div
#
module Ui
class FomanticFormBuilder < ActionView::Helpers::FormBuilder
  COLUMN_WORDS = %w[
    one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen
  ].freeze

  # ──────────────────────────────────────────────────────────────────────────
  # Text-like inputs
  # ──────────────────────────────────────────────────────────────────────────

  %i[
    text_field email_field password_field
    number_field url_field telephone_field phone_field
    search_field color_field range_field
  ].each do |method_name|
    define_method(method_name) do |attribute, options = {}|
      wrap_in_field = options.delete(:field)

      input_html = super(attribute, options)

      wrap_in_field ? fomantic_field(attribute, options, input_html) : input_html
    end
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Date/time inputs — wrapped in Fomantic calendar
  # ──────────────────────────────────────────────────────────────────────────

  CALENDAR_TYPE_MAP = {
    date_field:           "date",
    datetime_local_field: "datetime",
    time_field:           "time",
    month_field:          "month",
    week_field:           "date"
  }.freeze

  %i[date_field datetime_local_field time_field month_field week_field].each do |method_name|
    define_method(method_name) do |attribute, options = {}|
      wrap_in_field = options.delete(:field)
      cal_type   = options.delete(:calendar_type) || CALENDAR_TYPE_MAP[method_name]
      cal_format = options.delete(:calendar_format)
      cal_icon   = options.delete(:icon) || "calendar"
      min_date   = options.delete(:min_date)
      max_date   = options.delete(:max_date)
      cal_inverted = options.delete(:inverted)
      cal_size   = options.delete(:calendar_size)

      input_html = super(attribute, options)
      result = calendar_wrap(input_html, cal_type,
        format: cal_format, icon: cal_icon, min_date: min_date,
        max_date: max_date, inverted: cal_inverted, size: cal_size)

      wrap_in_field ? fomantic_field(attribute, options, result) : result
    end
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Text area
  # ──────────────────────────────────────────────────────────────────────────

  def text_area(attribute, options = {})
    wrap_in_field = options.delete(:field)
    transparent = options.delete(:transparent)

    options[:class] = class_names(("transparent" if transparent), options[:class])
    input_html = super(attribute, options)

    wrap_in_field ? fomantic_field(attribute, options, input_html) : input_html
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Emoji picker
  # ──────────────────────────────────────────────────────────────────────────

  def emoji_field(attribute, options = {})
    wrap_in_field = options.delete(:field)

    current = object&.public_send(attribute) rescue nil
    name = object_name ? "#{object_name}[#{attribute}]" : attribute.to_s

    result = @template.tag.div(data: { controller: "fui-emoji-picker" }) {
      @template.safe_join([
        @template.hidden_field_tag(name, current, data: { fui_emoji_picker_target: "input" }),
        @template.tag.button(
          type: "button",
          class: "ui basic button",
          data: { fui_emoji_picker_target: "preview", action: "click->fui-emoji-picker#toggle" }
        ) { (current.presence || "Pick emoji").html_safe },
        @template.tag.div(
          style: "display:none; position:absolute; z-index:1000;",
          data: { fui_emoji_picker_target: "dropdown" }
        )
      ])
    }

    wrap_in_field ? fomantic_field(attribute, options, result) : result
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Select / Dropdown
  # ──────────────────────────────────────────────────────────────────────────

  def select(attribute, choices = nil, options = {}, html_options = {}, &block)
    wrap_in_field = options.delete(:field)
    use_dropdown = options.delete(:dropdown)

    raw_select = super(attribute, choices, options, html_options, &block)
    result = use_dropdown ? dropdown_wrap(raw_select) : raw_select

    wrap_in_field ? fomantic_field(attribute, options, result) : result
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Check box
  # ──────────────────────────────────────────────────────────────────────────

  def check_box(attribute, options = {}, checked_value = "1", unchecked_value = "0")
    wrap_in_field = options.delete(:field)
    label_text    = options.delete(:label) { label_for(attribute) }
    kind          = options.delete(:kind) { :checkbox }
    size          = options.delete(:size)
    inverted      = options.delete(:inverted)
    fitted        = options.delete(:fitted)
    right_aligned = options.delete(:right_aligned)

    checkbox_html = super(attribute, options, checked_value, unchecked_value)
    result = checkbox_ui(checkbox_html, label_text, kind,
                size: size, inverted: inverted, fitted: fitted, right_aligned: right_aligned)

    wrap_in_field ? fomantic_field(attribute, { suppress_label: true }, result) : result
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Radio button
  # ──────────────────────────────────────────────────────────────────────────

  def radio_button(attribute, value, options = {})
    wrap_in_field = options.delete(:field)
    label_text    = options.delete(:label) { value.to_s.humanize }
    kind          = options.delete(:kind) { :radio }
    size          = options.delete(:size)
    inverted      = options.delete(:inverted)
    fitted        = options.delete(:fitted)
    right_aligned = options.delete(:right_aligned)

    radio_html = super(attribute, value, options)
    result = checkbox_ui(radio_html, label_text, kind,
                size: size, inverted: inverted, fitted: fitted, right_aligned: right_aligned)

    wrap_in_field ? fomantic_field(attribute, { suppress_label: true }, result) : result
  end

  # ──────────────────────────────────────────────────────────────────────────
  # File field
  # ──────────────────────────────────────────────────────────────────────────

  def file_field(attribute, options = {})
    wrap_in_field = options.delete(:field)

    input_html = super(attribute, options)

    wrap_in_field ? fomantic_field(attribute, options, input_html) : input_html
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Hidden field (no wrapper ever)
  # ──────────────────────────────────────────────────────────────────────────

  def hidden_field(attribute, options = {})
    super(attribute, options)
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Submit button
  # ──────────────────────────────────────────────────────────────────────────

  def submit(value = nil, options = {})
    color   = options.delete(:color)
    basic   = options.delete(:basic)
    inverted = options.delete(:inverted)
    size    = options.delete(:size)
    icon    = options.delete(:icon)

    button_class = class_names(
      "ui", "button",
      color,
      size,
      ("basic" if basic),
      ("inverted" if inverted),
      options.delete(:class)
    )
    options[:class] = button_class

    icon_html = icon ? @template.tag.i(class: "#{icon} icon") : "".html_safe
    icon_html + super(value, options)
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Label override — produces a plain <label>
  # ──────────────────────────────────────────────────────────────────────────

  def label(attribute, text = nil, options = {}, &block)
    super(attribute, text, options, &block)
  end

  # ──────────────────────────────────────────────────────────────────────────
  # fields_group — wraps children in <div class="fields ...">
  # ──────────────────────────────────────────────────────────────────────────

  def fields_group(options = {}, &block)
    equal_width = options.delete(:equal_width)
    inline      = options.delete(:inline)
    count       = options.delete(:count)
    extra       = options.delete(:class)

    count_word = COLUMN_WORDS[count.to_i - 1] if count

    css = class_names(
      count_word,
      "fields",
      ("equal width" if equal_width),
      ("inline" if inline),
      extra
    )

    @template.tag.div(class: css, &block)
  end

  # ──────────────────────────────────────────────────────────────────────────
  # Form-level message helpers
  # ──────────────────────────────────────────────────────────────────────────

  def error_message(header, messages = [])
    form_message("error", header, messages)
  end

  def success_message(header, body = nil)
    form_message("success", header, [], body)
  end

  def warning_message(header, messages = [])
    form_message("warning", header, messages)
  end

  def info_message(header, messages = [])
    form_message("info", header, messages)
  end

  private

  # ── Field wrapper (opt-in via field: true) ─────────────────────────────────

  def fomantic_field(attribute, options, input_html)
    required       = options.delete(:required)
    disabled       = options.delete(:disabled)
    readonly_opt   = options.delete(:readonly)
    inline         = options.delete(:inline)
    width          = options.delete(:width)
    error_msg      = options.delete(:error)
    warning_msg    = options.delete(:warning)
    hint           = options.delete(:hint)
    field_class    = options.delete(:field_class)
    suppress_label = options.delete(:suppress_label)
    custom_label   = options.delete(:label)

    has_error   = error_msg.present?   || object_has_error?(attribute)
    has_warning = warning_msg.present?

    div_class = class_names(
      width,
      "field",
      ("required"  if required),
      ("disabled"  if disabled),
      ("read-only" if readonly_opt),
      ("inline"    if inline),
      ("error"     if has_error),
      ("warning"   if has_warning),
      field_class
    )

    label_html = unless suppress_label
      text = custom_label.nil? ? label_for(attribute) : custom_label
      text ? label(attribute, text) : nil
    end

    note_html  = inline_note(error_msg || (has_error && first_error(attribute)), "red")
    note_html  = inline_note(warning_msg, "orange") if note_html.blank? && has_warning
    note_html  = inline_note(hint, "grey")          if note_html.blank? && hint

    @template.tag.div(class: div_class) do
      safe_join([ label_html, input_html, note_html ].compact)
    end
  end

  # ── Checkbox / Radio UI shell ──────────────────────────────────────────────

  def checkbox_ui(input_html, label_text, kind, size: nil, inverted: nil, fitted: nil, right_aligned: nil)
    modifier = { radio: "radio", slider: "slider", toggle: "toggle" }[kind]
    css = class_names(
      "ui",
      size,
      modifier,
      ("inverted" if inverted),
      ("fitted" if fitted),
      ("right aligned" if right_aligned),
      "checkbox"
    )

    @template.tag.div(class: css, data: { controller: "fui-checkbox" }) do
      safe_join([ input_html, @template.tag.label(label_text.is_a?(String) ? label_text : nil) ])
    end
  end

  # ── Calendar wrapper ─────────────────────────────────────────────────────

  def calendar_wrap(input_html, cal_type, format: nil, icon: "calendar",
                    min_date: nil, max_date: nil, inverted: nil, size: nil)
    data = { controller: "fui-calendar", fui_calendar_type_value: cal_type }
    data[:fui_calendar_format_value]   = format   if format
    data[:fui_calendar_min_date_value] = min_date if min_date
    data[:fui_calendar_max_date_value] = max_date if max_date

    cal_class = class_names("ui", size, ("inverted" if inverted), "calendar")

    @template.tag.div(class: cal_class, data: data) {
      @template.tag.div(class: "ui fluid input left icon") {
        safe_join([
          @template.tag.i(class: "#{icon} icon"),
          input_html
        ])
      }
    }
  end

  # ── Dropdown wrapper ───────────────────────────────────────────────────────

  def dropdown_wrap(select_html)
    @template.tag.div(class: "ui selection dropdown") do
      safe_join([
        @template.tag.i(class: "dropdown icon"),
        select_html
      ])
    end
  end

  # ── Form-level messages ────────────────────────────────────────────────────

  def form_message(type, header, messages = [], body = nil)
    list_html = messages.any? ? @template.tag.ul(class: "list") {
      safe_join(messages.map { |m| @template.tag.li(m) })
    } : nil

    body_html = body ? @template.tag.p(body) : nil

    @template.tag.div(class: "ui #{type} message") do
      safe_join([
        @template.tag.div(class: "header") { header },
        list_html,
        body_html
      ].compact)
    end
  end

  # ── Inline note beneath input ──────────────────────────────────────────────

  def inline_note(text, color = nil)
    return nil if text.blank?

    @template.tag.small(class: class_names("ui", color, "text")) { text }
  end

  # ── Humanise attribute name for label ─────────────────────────────────────

  def label_for(attribute)
    attr_str = attribute.to_s.delete_suffix("_id")
    if object && object.class.respond_to?(:human_attribute_name)
      object.class.human_attribute_name(attr_str)
    else
      attr_str.humanize
    end
  end

  # ── ActiveModel error introspection ───────────────────────────────────────

  def object_has_error?(attribute)
    object.respond_to?(:errors) && object.errors[attribute].any?
  end

  def first_error(attribute)
    object.errors[attribute].first if object.respond_to?(:errors)
  end

  # ── Safe join delegated to template ───────────────────────────────────────

  def safe_join(parts)
    @template.safe_join(parts)
  end

  # ── class_names helper ────────────────────────────────────────────────────

  def class_names(*args)
    args.flatten.compact.reject { |v| v == false || v.to_s.strip.empty? }.join(" ")
  end
end
end
