# frozen_string_literal: true

# ListDescription — description text within a ListItem or ListContent.
#
# Usage:
#   ListItem {
#     ListContent {
#       ListHeader { text "Krolewskie Jadlo" }
#       ListDescription { text "An excellent polish restaurant." }
#     }
#   }

class ListDescriptionComponent < Component
  def to_s
    tag.div(class: "description") { @content }
  end
end
