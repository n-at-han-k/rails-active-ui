# frozen_string_literal: true

# Loader — loading spinners.
#
# Usage:
#   Loader(active: true)
#   Loader(active: true, size: :large) { text "Loading..." }
#   Loader(inline: true, centered: true, active: true)

class LoaderComponent < Component
  attribute :active,        :boolean, default: false
  attribute :inline,        :boolean, default: false
  attribute :centered,      :boolean, default: false
  attribute :size,          :string,  default: nil
  attribute :inverted,      :boolean, default: false
  attribute :indeterminate, :boolean, default: false
  attribute :color,         :string,  default: nil
  attribute :disabled,      :boolean, default: false

  def to_s
    classes = [
      "ui",
      size,
      color,
      ("active" if active),
      ("disabled" if disabled),
      ("inline" if inline),
      ("centered" if centered),
      ("inverted" if inverted),
      ("indeterminate" if indeterminate),
      ("text" if @content.present?),
      "loader"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
