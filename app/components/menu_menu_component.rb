# frozen_string_literal: true

# MenuMenu — sub-menu or positioned menu group within a Menu.
#
# Usage:
#   Menu {
#     MenuItem(href: "/") { text "Home" }
#     MenuMenu(position: "right") {
#       MenuItem(href: "/login") { text "Login" }
#     }
#   }

class MenuMenuComponent < Component
  attribute :position, :string, default: nil

  def to_s
    classes = class_names(
      position,
      "menu"
    )

    tag.div(class: classes) { @content }
  end
end
