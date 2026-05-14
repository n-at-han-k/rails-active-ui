# frozen_string_literal: true

# ButtonGroup — a group of buttons displayed together.
#
# Usage:
#   ButtonGroup(color: "teal") {
#     Button { "Save" }
#     Dropdown(floating: true, button: true) { ... }
#   }
#   ButtonGroup(icon: true) {
#     Button { Icon(name: "bold") }
#     Button { Icon(name: "italic") }
#   }

class ButtonGroupComponent < Component
  include Sizeable

  attribute :color,    :string,  default: nil
  attribute :icon,     :boolean, default: false
  attribute :vertical, :boolean, default: false
  attribute :basic,    :boolean, default: false
  attribute :labeled,  :boolean, default: false

  def to_s
    classes = class_names(
      "ui",
      color,
      size,
      { "icon" => icon, "vertical" => vertical, "basic" => basic,
        "labeled" => labeled },
      "buttons"
    )

    tag.div(**merge_html_options(class: classes)) { @content }
  end
end
