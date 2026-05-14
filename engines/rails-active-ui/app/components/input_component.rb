# frozen_string_literal: true

# Input — Fomantic UI input wrapper.
#
# Renders <div class="ui ... input"> with optional icon. The actual <input>
# element comes from the block (e.g. a form builder TextField) or is
# auto-generated as a basic <input type="text"> when no block is given.
#
# Usage:
#
#   # Standalone (no form builder) — auto-generates <input>:
#   Input(icon: "search", placeholder: "Search...")
#
#   # Wrapping a form builder field:
#   Input(icon: "user", icon_position: "left") {
#     TextField(:email, placeholder: "E-mail address")
#   }
#
#   # Labeled input:
#   Input(labeled: true) { Tag { "http://" } }

class InputComponent < Component
  attribute :icon,          :string,  default: nil
  attribute :icon_position, :string,  default: "right"
  attribute :labeled,       :boolean, default: false
  attribute :action,        :boolean, default: false
  attribute :transparent,   :boolean, default: false
  attribute :fluid,         :boolean, default: false
  attribute :size,          :string,  default: nil
  attribute :loading,       :boolean, default: false
  attribute :disabled,      :boolean, default: false
  attribute :error,         :boolean, default: false
  attribute :inverted,      :boolean, default: false
  attribute :placeholder,   :string,  default: nil

  def to_s
    classes = class_names(
      "ui",
      size,
      { "left icon" => icon && icon_position == "left",
        "icon" => icon && icon_position != "left",
        "labeled" => labeled, "action" => action,
        "transparent" => transparent, "fluid" => fluid,
        "loading" => loading, "disabled" => disabled,
        "error" => error, "inverted" => inverted },
      "input"
    )

    icon_el = icon ? tag.i(class: "#{icon} icon") : nil
    content = @content.present? ? @content : tag.input(type: "text", placeholder: placeholder)

    tag.div(**merge_html_options(class: classes)) {
      safe_join([ content, icon_el ].compact)
    }
  end
end
