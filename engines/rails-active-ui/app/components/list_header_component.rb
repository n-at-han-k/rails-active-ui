# frozen_string_literal: true

# ListHeader — header text within a ListItem or ListContent.
#
# Usage:
#   ListItem {
#     ListHeader { text "New York City" }
#     text "A lovely city"
#   }
#
#   ListItem {
#     ListContent {
#       ListHeader(href: "#") { text "Rachel" }
#       ListDescription { text "Last seen just now." }
#     }
#   }

class ListHeaderComponent < Component
  attribute :href, :string, default: nil

  def to_s
    if href
      tag.a(class: "header", href: href) { @content }
    else
      tag.div(class: "header") { @content }
    end
  end
end
