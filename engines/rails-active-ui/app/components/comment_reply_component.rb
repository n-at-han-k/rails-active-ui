# frozen_string_literal: true

# CommentReply — a reply comment nested inside a CommentReplyGroup.
#
# Usage:
#   CommentReplyGroup {
#     CommentReply { |c|
#       c.avatar { Image(src: "avatar.png") }
#       c.author { text "Jenny" }
#       c.metadata { text "Just now" }
#       c.text_slot { text "Great reply!" }
#       c.actions { text "Reply" }
#     }
#   }

class CommentReplyComponent < Component
  attribute :disabled, :boolean, default: false

  slot :avatar
  slot :author
  slot :metadata
  slot :text_slot
  slot :actions

  def to_s
    classes = class_names(
      { "disabled" => disabled },
      "comment"
    )

    avatar_el = @slots[:avatar] ? tag.a(class: "avatar") { @slots[:avatar] } : nil

    content_parts = [
      @slots[:author] ? tag.a(class: "author") { @slots[:author] } : nil,
      @slots[:metadata] ? tag.div(class: "metadata") { @slots[:metadata] } : nil,
      @slots[:text_slot] ? tag.div(class: "text") { @slots[:text_slot] } : nil,
      @slots[:actions] ? tag.div(class: "actions") { @slots[:actions] } : nil
    ].compact

    content_el = content_parts.any? ? tag.div(class: "content") { safe_join(content_parts) } : nil

    loose_content = @slots.values.any? ? nil : @content.presence
    tag.div(**merge_html_options(class: classes)) {
      safe_join([ avatar_el, content_el, loose_content ])
    }
  end
end
