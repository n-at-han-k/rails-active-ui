# frozen_string_literal: true

# Tag — colored labels, tags, and badges.
#
# Renders Fomantic-UI's "label" element. Named `Tag` in the DSL to avoid
# collision with Rails' `label` form helper.
#
# Usage:
#   Tag(color: :blue) { "New" }
#   Tag(tag_style: true, color: :teal) { "Featured" }
#   Tag(ribbon: true, color: :red) { "Sale" }
#   Tag(icon: "mail", detail: "23") { "Mail" }

class TagComponent < Component
  include Attachable

  attribute :color,      :string,  default: nil
  attribute :size,       :string,  default: nil
  attribute :pointing,   :string,  default: nil
  attribute :corner,     :string,  default: nil
  attribute :ribbon,     :boolean, default: false
  attribute :circular,   :boolean, default: false
  attribute :floating,   :boolean, default: false
  attribute :tag_style,  :boolean, default: false
  attribute :detail,     :string,  default: nil
  attribute :icon,       :string,  default: nil
  attribute :image,      :boolean, default: false
  attribute :basic,      :boolean, default: false
  attribute :horizontal, :boolean, default: false
  attribute :inverted,   :boolean, default: false
  attribute :fluid,      :boolean, default: false
  attribute :disabled,   :boolean, default: false
  attribute :empty,      :boolean, default: false

  def to_s
    classes = class_names(
      "ui",
      color,
      size,
      pointing && "#{pointing} pointing",
      corner && "#{corner} corner",
      { "attached" => attached,
        "ribbon" => ribbon, "circular" => circular, "floating" => floating,
        "tag" => tag_style, "image" => image, "basic" => basic,
        "horizontal" => horizontal, "inverted" => inverted,
        "fluid" => fluid, "disabled" => disabled, "empty" => empty },
      "label"
    )

    icon_el = icon ? tag.i(class: "#{icon} icon") : nil
    detail_el = detail ? tag.div(class: "detail") { detail } : nil

    tag.div(class: classes) {
      safe_join([ icon_el, @content, detail_el ])
    }
  end
end
