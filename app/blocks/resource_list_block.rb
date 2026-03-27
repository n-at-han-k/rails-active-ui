# frozen_string_literal: true

# ResourceListBlock — a searchable, scrollable list panel for any resource.
#
# Composes Header, Input, Button, and turbo-framed partial iteration into
# a single reusable block. Designed for sidebar/master-list patterns where
# a Ransack search filters a collection rendered via a per-item partial.
#
# Usage:
#   ResourceListBlock(
#     heading:          "Notes",
#     search_url:       notes_path,
#     search_query:     @q,
#     search_predicate: "title_cont",
#     resources:        @notes,
#     item_partial:     "notes/note_card",
#     item_local:       "note",
#     new_path:         new_note_path,
#     turbo_frame:      "notes-list",
#     id:               "item-list-panel"
#   )
#
# The search section is omitted when search_query is nil.
# The "new" button is omitted when new_path is nil.
# The list is wrapped in a turbo frame when turbo_frame is provided.
#
# For auto-submit / live-search behaviour, pass Stimulus wiring via
# search_form_data:
#
#   ResourceListBlock(
#     ...,
#     search_form_data: {
#       controller:  "auto-submit",
#       action:      "input->auto-submit#submit",
#       turbo_frame: "notes-list"
#     }
#   )
#
# HTML structure (all sections wrapped for predictable styling):
#
#   div.resource-list-block
#     div.resource-list-header
#       [HStack with heading + button]
#     div.resource-list-search
#       [search_form_for with Input]
#     turbo-frame (optional)
#       div.resource-list-items
#         [rendered partials]

class ResourceListBlock < Component
  attribute :heading,            :string,  default: nil
  attribute :search_url,                   default: nil
  attribute :search_query,                 default: nil
  attribute :search_predicate,   :string,  default: "title_cont"
  attribute :search_placeholder, :string,  default: "Search\u2026"
  attribute :search_form_data,             default: nil
  attribute :new_path,           :string,  default: nil
  attribute :resources,                    default: nil
  attribute :item_partial,       :string,  default: nil
  attribute :item_local,         :string,  default: "resource"
  attribute :turbo_frame,        :string,  default: nil

  def to_s
    tag.div(**merge_html_options(class: "resource-list-block")) {
      safe_join([
        render_header,
        render_search,
        render_list,
        @content
      ])
    }
  end

  private

  # ── Header ──────────────────────────────────────────────────────────
  # Heading text on the left, optional "new" button on the right.

  def render_header
    return if heading.nil? && new_path.nil?

    heading_html = heading ? render_component(HeaderComponent, size: :h3) { heading } : nil
    button_html = new_path ? render_component(ButtonComponent, href: new_path, size: :mini, icon: "plus", variant: :primary) : nil

    tag.div(class: "resource-list-header") {
      render_component(HStackComponent, spacing: 8, justify: "between", align: "center") {
        safe_join([ heading_html, button_html ])
      }
    }
  end

  # ── Search ──────────────────────────────────────────────────────────
  # Ransack search_form_for wrapping an Input. Omitted when search_query
  # is nil. The form targets the turbo frame so only the list refreshes.

  def render_search
    return if search_query.nil?

    form_html_opts = { class: "ui form" }
    form_data = build_search_form_data
    form_html_opts[:data] = form_data if form_data.present?

    search_value = search_query.try(search_predicate)

    tag.div(class: "resource-list-search") {
      @view_context.search_form_for(search_query, url: search_url, html: form_html_opts) {
        InputComponent.new(
          fluid:       true,
          icon:        "search",
          placeholder: search_placeholder,
          name:        "q[#{search_predicate}]",
          value:       search_value
        ).render_in(@view_context)
      }
    }
  end

  # ── List ────────────────────────────────────────────────────────────
  # Iterates resources and renders the item partial for each one.
  # Optionally wrapped in a turbo frame for scoped replacement.

  def render_list
    items = tag.div(class: "resource-list-items") {
      safe_join(
        Array(resources).map { |resource|
          @view_context.render(partial: item_partial, locals: { item_local.to_sym => resource })
        }
      )
    }

    if turbo_frame
      @view_context.turbo_frame_tag(turbo_frame) { items }
    else
      items
    end
  end

  # ── Helpers ─────────────────────────────────────────────────────────

  def render_component(klass, **kwargs, &block)
    klass.new(**kwargs).render_in(@view_context, &block)
  end

  def build_search_form_data
    data = (search_form_data || {}).dup
    # When a turbo frame is configured and the consumer hasn't explicitly
    # set a turbo_frame on the form, default to targeting the list frame.
    if turbo_frame && !data.key?(:turbo_frame)
      data[:turbo_frame] = turbo_frame
    end
    data
  end
end
