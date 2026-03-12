# frozen_string_literal: true

# Feed — activity/event feed.
#
# Usage:
#   Feed(size: :small) {
#     text '<div class="event">...</div>'.html_safe
#   }

class FeedComponent < Component
  attribute :size, :string, default: nil

  def to_s
    classes = [
      "ui",
      size,
      "feed"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
