# frozen_string_literal: true

# Header — page and content headers.
#
# Usage:
#   Header(size: :h2) { text "Page Title" }
#   Header(size: :h3, sub: true) { text "Subtitle" }
#   Header(icon: "settings", dividing: true) { text "Settings" }

class HeaderComponent < Component
  attribute :size,         :string,  default: "h2"
  attribute :sub,          :boolean, default: false
  attribute :icon,         :string,  default: nil
  attribute :dividing,     :boolean, default: false
  attribute :block_header, :boolean, default: false
  attribute :inverted,     :boolean, default: false
  attribute :color,        :string,  default: nil
  attribute :aligned,      :string,  default: nil
  attribute :attached,     :string,  default: nil
  attribute :disabled,     :boolean, default: false
  attribute :floating,     :boolean, default: false

  def to_s
    classes = [
      "ui",
      color,
      ("sub" if sub),
      ("dividing" if dividing),
      ("block" if block_header),
      ("inverted" if inverted),
      ("disabled" if disabled),
      ("floating" if floating),
      (aligned && "#{aligned} aligned"),
      (attached && "#{attached} attached"),
      ("icon" if icon && !@content),
      "header"
    ].compact.join(" ")

    tag_name = size.to_s.start_with?("h") ? size.to_s.to_sym : :h2
    icon_el = icon ? tag.i(class: "#{icon} icon") : nil

    tag.public_send(tag_name, class: classes) {
      safe_join([ icon_el, @content ])
    }
  end
end
