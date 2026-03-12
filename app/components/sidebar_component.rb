# frozen_string_literal: true

# Sidebar — slide-out sidebar navigation.
#
# Usage:
#   Sidebar(direction: :left, visible: true, inverted: true) {
#     text '<a class="item">Home</a>'.html_safe
#     text '<a class="item">Settings</a>'.html_safe
#   }

class SidebarComponent < Component
  attribute :direction,  :string,  default: "left"
  attribute :transition, :string,  default: "overlay"
  attribute :visible,    :boolean, default: false
  attribute :inverted,   :boolean, default: false
  attribute :vertical,   :boolean, default: true
  attribute :width,      :string,  default: nil

  def to_s
    classes = [
      "ui",
      direction,
      width,
      ("inverted" if inverted),
      ("vertical" if vertical),
      ("visible" if visible),
      "sidebar",
      "menu"
    ].compact.join(" ")

    tag.div(class: classes, data: { controller: "fui-sidebar", fui_sidebar_transition_value: transition }) { @content }
  end
end
