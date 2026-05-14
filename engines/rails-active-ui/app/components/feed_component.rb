# frozen_string_literal: true

# Feed — activity/event feed.
#
# Usage:
#   Feed(size: "small") {
#     FeedEvent { |e| ... }
#   }

class FeedComponent < Component
  attribute :size,      :string,  default: nil
  attribute :inverted,  :boolean, default: false
  attribute :connected, :boolean, default: false
  attribute :ordered,   :boolean, default: false
  attribute :divided,   :boolean, default: false
  attribute :disabled,  :boolean, default: false
  attribute :color,     :string,  default: nil

  def to_s
    classes = class_names(
      "ui",
      size,
      color,
      { "inverted" => inverted },
      { "connected" => connected },
      { "ordered" => ordered },
      { "divided" => divided },
      { "disabled" => disabled },
      "feed"
    )

    tag.div(**merge_html_options(class: classes)) { @content }
  end
end
