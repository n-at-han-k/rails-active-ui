# frozen_string_literal: true

# ListItem — individual item within a List.
#
# Usage:
#   List {
#     ListItem { text "Apples" }
#     ListItem(icon: "users") { ListContent { text "Fomantic UI" } }
#     ListItem(href: "#") { text "Link item" }
#   }

class ListItemComponent < Component
  attribute :href,     :string,  default: nil
  attribute :active,   :boolean, default: false
  attribute :disabled, :boolean, default: false
  attribute :icon,     :string,  default: nil
  attribute :value,    :string,  default: nil

  def to_s
    classes = class_names(
      { "active" => active, "disabled" => disabled },
      "item"
    )

    icon_el = icon ? tag.i(class: "#{icon} icon") : nil
    opts = { class: classes }
    opts[:"data-value"] = value if value

    inner = safe_join([ icon_el, @content ])

    if href
      tag.a(inner, **opts, href: href)
    else
      tag.div(inner, **opts)
    end
  end
end
