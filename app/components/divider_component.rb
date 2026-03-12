# frozen_string_literal: true

# Divider — horizontal/vertical dividers, optionally with text or icon.
#
# Usage:
#   Divider()
#   Divider(horizontal: true) { text "OR" }
#   Divider(section: true, inverted: true)

class DividerComponent < Component
  attribute :vertical,   :boolean, default: false
  attribute :horizontal, :boolean, default: false
  attribute :hidden,     :boolean, default: false
  attribute :section,    :boolean, default: false
  attribute :inverted,   :boolean, default: false
  attribute :fitted,     :boolean, default: false
  attribute :clearing,   :boolean, default: false

  def to_s
    classes = [
      "ui",
      ("vertical" if vertical),
      ("horizontal" if horizontal),
      ("hidden" if hidden),
      ("section" if section),
      ("inverted" if inverted),
      ("fitted" if fitted),
      ("clearing" if clearing),
      "divider"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
