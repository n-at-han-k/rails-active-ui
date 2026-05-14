# frozen_string_literal: true

# FeedItem — a single item/event in a Feed.
#
# Usage:
#   FeedItem { |e|
#     e.label { Image(src: "/images/avatar/small/elliot.jpg") }
#     e.summary {
#       LinkTo(class: "user") { "Elliot Fu" }
#       text " added you as a friend"
#     }
#     e.date { "1 Hour Ago" }
#     e.meta {
#       LinkTo(class: "like") {
#         Icon(name: "like")
#         text " 4 Likes"
#       }
#     }
#     e.extra_text { "Some additional text" }
#     e.extra_images {
#       LinkTo { Image(src: "/images/wireframe/image.png") }
#     }
#   }

class FeedItemComponent < Component
  attribute :disabled, :boolean, default: false
  attribute :color,    :string,  default: nil

  slot :label
  slot :summary
  slot :date
  slot :date_inline
  slot :meta
  slot :extra_text
  slot :extra_images

  def to_s
    classes = class_names(
      { "disabled" => disabled },
      color,
      "event"
    )

    label_el = if @slots[:label]
      tag.div(class: "label") { @slots[:label] }
    end

    content_parts = []

    # Date can appear at the top of content (outside summary)
    if @slots[:date]
      content_parts << tag.div(class: "date") { @slots[:date] }
    end

    # Summary with optional inline date
    if @slots[:summary]
      summary_inner = @slots[:summary]
      if @slots[:date_inline]
        summary_inner = safe_join([ summary_inner, tag.div(class: "date") { @slots[:date_inline] } ])
      end
      content_parts << tag.div(class: "summary") { summary_inner }
    end

    if @slots[:extra_text]
      content_parts << tag.div(class: "extra text") { @slots[:extra_text] }
    end

    if @slots[:extra_images]
      content_parts << tag.div(class: "extra images") { @slots[:extra_images] }
    end

    if @slots[:meta]
      content_parts << tag.div(class: "meta") { @slots[:meta] }
    end

    content_el = if content_parts.any? || @content.present?
      tag.div(class: "content") { safe_join([ *content_parts, @content.presence ]) }
    end

    tag.div(class: classes) {
      safe_join([ label_el, content_el ])
    }
  end
end
