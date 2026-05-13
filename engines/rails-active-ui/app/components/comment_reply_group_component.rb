# frozen_string_literal: true

# CommentReplyGroup — nested reply group within a Comment.
#
# Usage:
#   Comment { |c|
#     c.avatar { ... }
#     c.author { text "Elliot" }
#     CommentReplyGroup {
#       CommentReply { |c| ... }
#     }
#   }

class CommentReplyGroupComponent < Component
  attribute :collapsed, :boolean, default: false

  def to_s
    classes = class_names(
      { "collapsed" => collapsed },
      "comments"
    )

    tag.div(class: classes) { @content }
  end
end
