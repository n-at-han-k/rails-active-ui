# frozen_string_literal: true

# Tab — a single content pane within a TabGroup.
#
# Usage (inside TabGroup):
#   Tab(active: true, path: "first", attached: true, segment: true) {
#     text "First tab content"
#   }
#
# Usage (standalone, no TabGroup):
#   Tab(active: true, path: "first") { text "Pane content" }

class TabComponent < Component
  include Attachable

  attribute :active,  :boolean, default: false
  attribute :path,    :string,  default: nil
  attribute :segment, :boolean, default: false

  def to_s
    classes = class_names(
      "ui",
      { "active" => active,
        "bottom attached" => attached,
        "segment" => segment },
      "tab"
    )

    data = {}
    data[:tab] = path if path

    tag.div(**merge_html_options(class: classes, data: data)) { @content }
  end
end
