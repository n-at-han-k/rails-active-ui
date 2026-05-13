# frozen_string_literal: true

# TabGroup — wrapper for tab navigation with content panes.
#
# Renders a <div data-controller="fui-tab"> that wraps a Menu and Tab panes.
# The fui-tab Stimulus controller finds .item[data-tab] elements within
# and initializes Fomantic-UI's $.fn.tab plugin for click-based switching.
#
# Usage:
#   TabGroup {
#     Menu(tabular: true, attached: "top") {
#       MenuItem(active: true, tab: "first") { text "First" }
#       MenuItem(tab: "second") { text "Second" }
#     }
#     Tab(active: true, path: "first", attached: true, segment: true) {
#       text "First tab content"
#     }
#     Tab(path: "second", attached: true, segment: true) {
#       text "Second tab content"
#     }
#   }

class TabGroupComponent < Component
  attribute :history,      :boolean, default: false
  attribute :history_type, :string,  default: "hash"

  def to_s
    data = { controller: "fui-tab" }
    data[:fui_tab_history_value] = history if history
    data[:fui_tab_history_type_value] = history_type if history

    tag.div(**merge_html_options(data: data)) { @content }
  end
end
