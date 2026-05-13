# frozen_string_literal: true

# ListContent — content wrapper within a ListItem.
#
# Usage:
#   ListItem {
#     Image(src: "avatar.png", class: "avatar")
#     ListContent {
#       ListHeader { text "Rachel" }
#       ListDescription { text "Last seen just now." }
#     }
#   }

class ListContentComponent < Component
  attribute :aligned, :string, default: nil
  attribute :floated, :string, default: nil

  def to_s
    classes = class_names(
      floated && "#{floated} floated",
      aligned && "#{aligned} aligned",
      "content"
    )

    tag.div(class: classes) { @content }
  end
end
