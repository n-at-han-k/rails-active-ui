# frozen_string_literal: true

# CommentGroup — wrapper for a group of comments.
#
# Usage:
#   CommentGroup(threaded: true) {
#     Comment { |c| ... }
#     Comment { |c| ... }
#   }

class CommentGroupComponent < Component
  attribute :threaded, :boolean, default: false
  attribute :minimal,  :boolean, default: false
  attribute :inverted, :boolean, default: false
  attribute :size,     :string,  default: nil

  def to_s
    classes = class_names(
      "ui",
      size,
      { "threaded" => threaded, "minimal" => minimal, "inverted" => inverted },
      "comments"
    )

    tag.div(**merge_html_options(class: classes)) { @content }
  end
end
