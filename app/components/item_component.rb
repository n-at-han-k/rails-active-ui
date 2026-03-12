# frozen_string_literal: true

# Item — grouped content items with image and content regions.
#
# Usage:
#   Item { |c|
#     c.image { Image(src: "product.jpg", size: :tiny) }
#     c.header { text "Product Name" }
#     c.meta { text "$19.99" }
#     c.description { text "A great product." }
#     c.extra { text "In stock" }
#   }

class ItemComponent < Component
  attribute :divided,     :boolean, default: false
  attribute :relaxed,     :boolean, default: false
  attribute :link,        :boolean, default: false
  attribute :unstackable, :boolean, default: false

  slot :image
  slot :header
  slot :meta
  slot :description
  slot :extra

  def to_s
    classes = [
      "ui",
      ("divided" if divided),
      ("relaxed" if relaxed),
      ("link" if link),
      ("unstackable" if unstackable),
      "items"
    ].compact.join(" ")

    image_el = @slots[:image] ? tag.div(class: "image") { @slots[:image] } : nil

    content_parts = [
      @slots[:header] ? tag.div(class: "header") { @slots[:header] } : nil,
      @slots[:meta] ? tag.div(class: "meta") { @slots[:meta] } : nil,
      @slots[:description] ? tag.div(class: "description") { @slots[:description] } : nil,
      @slots[:extra] ? tag.div(class: "extra") { @slots[:extra] } : nil
    ].compact

    content_el = content_parts.any? ? tag.div(class: "content") { safe_join(content_parts) } : nil

    tag.div(class: classes) {
      tag.div(class: "item") {
        safe_join([ image_el, content_el, @content.presence ])
      }
    }
  end
end
