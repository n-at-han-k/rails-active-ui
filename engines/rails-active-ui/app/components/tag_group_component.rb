# frozen_string_literal: true

# TagGroup — a group of Tag (label) elements.
#
# Usage:
#   TagGroup {
#     Tag { "One" }
#     Tag { "Two" }
#   }
#   TagGroup(size: "huge", color: "blue") {
#     Tag { "Fun" }
#     Tag { "Happy" }
#   }

class TagGroupComponent < Component
  attribute :size,     :string,  default: nil
  attribute :color,    :string,  default: nil
  attribute :basic,    :boolean, default: false
  attribute :tag_style, :boolean, default: false
  attribute :circular, :boolean, default: false

  def to_s
    classes = class_names(
      "ui",
      size,
      color,
      { "basic" => basic, "tag" => tag_style, "circular" => circular },
      "labels"
    )

    tag.div(class: classes) { @content }
  end
end
