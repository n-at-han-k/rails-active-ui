# frozen_string_literal: true

# Rating — star/heart rating widget.
#
# Usage:
#   Rating(max_rating: 5, rating: 3)
#   Rating(max_rating: 5, rating: 4, icon: :heart, size: :large)
#   Rating(max_rating: 10, disabled: true, rating: 7)

class RatingComponent < Component
  attribute :max_rating, :integer, default: 5
  attribute :rating,     :integer, default: 0
  attribute :icon,       :string,  default: "star"
  attribute :size,       :string,  default: nil
  attribute :disabled,   :boolean, default: false
  attribute :clearable,  :boolean, default: false
  attribute :name,       :string,  default: nil

  def to_s
    classes = [
      "ui",
      icon,
      size,
      ("disabled" if disabled),
      "rating"
    ].compact.join(" ")

    data = { controller: "fui-rating", rating: rating, max_rating: max_rating }
    data[:fui_rating_clearable_value] = "true" if clearable

    icons = (1..max_rating).map { |i|
      active_class = i <= rating ? "#{icon} icon active" : "#{icon} icon"
      tag.i(class: active_class)
    }

    name_el = name ? tag.input(type: "hidden", name: name, value: rating) : nil

    tag.div(class: classes, data: data) {
      safe_join(icons + [ name_el ])
    }
  end
end
