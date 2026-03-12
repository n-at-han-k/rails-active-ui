# frozen_string_literal: true

# Segment — grouped content sections.
#
# Usage:
#   Segment { text "Basic segment" }
#   Segment(raised: true, padded: :very) { text "Raised" }
#   Segment(inverted: true, color: :blue) { text "Blue inverted" }

class SegmentComponent < Component
  attribute :raised,    :boolean, default: false
  attribute :stacked,   :boolean, default: false
  attribute :piled,     :boolean, default: false
  attribute :vertical,  :boolean, default: false
  attribute :inverted,  :boolean, default: false
  attribute :padded,    :string,  default: nil
  attribute :compact,   :boolean, default: false
  attribute :color,     :string,  default: nil
  attribute :attached,  :string,  default: nil
  attribute :loading,   :boolean, default: false
  attribute :clearing,  :boolean, default: false
  attribute :basic,     :boolean, default: false
  attribute :circular,  :boolean, default: false
  attribute :disabled,  :boolean, default: false
  attribute :placeholder_seg, :boolean, default: false
  attribute :secondary, :boolean, default: false
  attribute :tertiary,  :boolean, default: false

  def to_s
    classes = [
      "ui",
      color,
      ("raised" if raised),
      ("stacked" if stacked),
      ("piled" if piled),
      ("vertical" if vertical),
      ("inverted" if inverted),
      (padded && "#{padded == "very" ? "very " : ""}padded"),
      ("compact" if compact),
      (attached && "#{attached} attached"),
      ("loading" if loading),
      ("clearing" if clearing),
      ("basic" if basic),
      ("circular" if circular),
      ("disabled" if disabled),
      ("placeholder" if placeholder_seg),
      ("secondary" if secondary),
      ("tertiary" if tertiary),
      "segment"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
