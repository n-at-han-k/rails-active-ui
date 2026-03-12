# frozen_string_literal: true

# Icon — icon element using Fomantic-UI icon font.
#
# Usage:
#   Icon(name: "home")
#   Icon(name: "heart", color: :red, size: :large)
#   Icon(name: "spinner", loading: true)

class IconComponent < Component
  attribute :name,     :string,  default: nil
  attribute :size,     :string,  default: nil
  attribute :color,    :string,  default: nil
  attribute :disabled, :boolean, default: false
  attribute :loading,  :boolean, default: false
  attribute :fitted,   :boolean, default: false
  attribute :link,     :boolean, default: false
  attribute :circular, :boolean, default: false
  attribute :bordered, :boolean, default: false
  attribute :inverted, :boolean, default: false
  attribute :flipped,  :string,  default: nil
  attribute :rotated,  :string,  default: nil
  attribute :corner,   :string,  default: nil

  def to_s
    classes = [
      name,
      size,
      color,
      ("disabled" if disabled),
      ("loading" if loading),
      ("fitted" if fitted),
      ("link" if link),
      ("circular" if circular),
      ("bordered" if bordered),
      ("inverted" if inverted),
      (flipped && "#{flipped} flipped"),
      (rotated && "#{rotated} rotated"),
      (corner && "#{corner} corner"),
      "icon"
    ].compact.join(" ")

    tag.i(class: classes)
  end
end
