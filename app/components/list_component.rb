# frozen_string_literal: true

# List — ordered, unordered, and bulleted lists.
#
# Usage:
#   List(bulleted: true) { text "items..." }
#   List(divided: true, relaxed: true) { text "items..." }

class ListComponent < Component
  attribute :ordered,    :boolean, default: false
  attribute :bulleted,   :boolean, default: false
  attribute :divided,    :boolean, default: false
  attribute :relaxed,    :boolean, default: false
  attribute :animated,   :boolean, default: false
  attribute :horizontal, :boolean, default: false
  attribute :inverted,   :boolean, default: false
  attribute :size,       :string,  default: nil
  attribute :celled,     :boolean, default: false
  attribute :selection,  :boolean, default: false
  attribute :link,       :boolean, default: false

  def to_s
    classes = [
      "ui",
      size,
      ("ordered" if ordered),
      ("bulleted" if bulleted),
      ("divided" if divided),
      ("relaxed" if relaxed),
      ("animated" if animated),
      ("horizontal" if horizontal),
      ("inverted" if inverted),
      ("celled" if celled),
      ("selection" if selection),
      ("link" if link),
      "list"
    ].compact.join(" ")

    if ordered
      tag.ol(class: classes) { @content }
    else
      tag.div(class: classes) { @content }
    end
  end
end
