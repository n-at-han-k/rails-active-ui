# frozen_string_literal: true

# MenuItem — individual item within a Menu or Sidebar.
#
# Usage:
#   Menu {
#     MenuItem(href: "/") { text "Home" }
#     MenuItem(active: true) { text "Current" }
#     MenuItem(header: true) { text "Section Header" }
#     MenuItem(icon: "settings") { text "Settings" }
#   }

class MenuItemComponent < Component
  include Positionable

  attribute :href,     :string,  default: nil
  attribute :active,   :boolean, default: false
  attribute :disabled, :boolean, default: false
  attribute :header,   :boolean, default: false
  attribute :icon,     :string,  default: nil
  attribute :fitted,   :string,  default: nil
  attribute :link,     :boolean, default: false
  attribute :color,    :string,  default: nil
  attribute :dropdown, :boolean, default: false
  attribute :value,    :string,  default: nil
  attribute :target,   :string,  default: nil
  attribute :rel,      :string,  default: nil

  def to_s
    classes = class_names(
      { "ui simple" => dropdown },
      color,
      fitted && (fitted == "true" ? "fitted" : "#{fitted} fitted"),
      position,
      { "active" => active,
        "disabled" => disabled,
        "header" => header,
        "link" => link,
        "dropdown" => dropdown },
      "item"
    )

    icon_el = icon ? tag.i(class: "#{icon} icon") : nil
    inner = icon_el ? safe_join([ icon_el, @content ]) : @content

    opts = { class: classes }
    opts["data-value"] = value if value
    opts[:target] = target if target
    opts[:rel] = rel if rel

    if href
      tag.a(**opts, href: href) { inner }
    else
      tag.div(**opts) { inner }
    end
  end
end
