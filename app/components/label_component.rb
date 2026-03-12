# frozen_string_literal: true

# Label — labels and tags.
#
# Usage:
#   Label(color: :blue) { text "New" }
#   Label(tag_style: true, color: :teal) { text "Featured" }
#   Label(ribbon: true, color: :red) { text "Sale" }
#   Label(icon: "mail", detail: "23") { text "Mail" }

class LabelComponent < Component
  attribute :color,    :string,  default: nil
  attribute :size,     :string,  default: nil
  attribute :pointing, :string,  default: nil
  attribute :corner,   :string,  default: nil
  attribute :ribbon,   :boolean, default: false
  attribute :attached, :string,  default: nil
  attribute :circular, :boolean, default: false
  attribute :floating, :boolean, default: false
  attribute :tag_style, :boolean, default: false
  attribute :detail,   :string,  default: nil
  attribute :icon,     :string,  default: nil
  attribute :image,    :boolean, default: false
  attribute :basic,    :boolean, default: false
  attribute :horizontal, :boolean, default: false

  def to_s
    classes = [
      "ui",
      color,
      size,
      (pointing && "#{pointing} pointing"),
      (corner && "#{corner} corner"),
      ("ribbon" if ribbon),
      (attached && "#{attached} attached"),
      ("circular" if circular),
      ("floating" if floating),
      ("tag" if tag_style),
      ("image" if image),
      ("basic" if basic),
      ("horizontal" if horizontal),
      "label"
    ].compact.join(" ")

    icon_el = icon ? tag.i(class: "#{icon} icon") : nil
    detail_el = detail ? tag.div(class: "detail") { detail } : nil

    tag.div(class: classes) {
      safe_join([ icon_el, @content, detail_el ])
    }
  end
end
