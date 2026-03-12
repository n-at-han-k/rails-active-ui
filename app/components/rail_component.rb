# frozen_string_literal: true

# Rail — content rails floating alongside main content.
#
# Usage:
#   Rail(position: :left) { text "Side content" }
#   Rail(position: :right, close: true) { text "Close rail" }

class RailComponent < Component
  attribute :position, :string,  default: "left"
  attribute :close,    :boolean, default: false
  attribute :attached, :boolean, default: false
  attribute :dividing, :boolean, default: false
  attribute :internal, :boolean, default: false

  def to_s
    classes = [
      "ui",
      position,
      ("close" if close),
      ("attached" if attached),
      ("dividing" if dividing),
      ("internal" if internal),
      "rail"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
