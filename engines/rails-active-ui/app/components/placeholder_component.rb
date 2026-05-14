# frozen_string_literal: true

# Placeholder — skeleton/placeholder content while loading.
#
# Usage:
#   Placeholder { |c|
#     c.header(image: true) {
#       c.line
#       c.line
#     }
#     c.paragraph {
#       c.line :medium
#       c.line :short
#     }
#   }
#
#   Placeholder { |c|
#     c.image :square
#   }
#
#   Placeholder { |c|
#     c.line :full
#     c.line :very_long
#     c.line :long
#     c.line :medium
#     c.line :short
#     c.line :very_short
#   }

class PlaceholderComponent < Component
  attribute :fluid,    :boolean, default: false
  attribute :inverted, :boolean, default: false

  def line(length = nil)
    css = class_names(length&.to_s&.tr("_", " "), "line")
    @view_context.output_buffer << tag.div(class: css)
  end

  def header(image: false, &block)
    css = class_names({ "image" => image }, "header")
    @view_context.output_buffer << tag.div(class: css) { @view_context.capture(self, &block) }
  end

  def paragraph(&block)
    @view_context.output_buffer << tag.div(class: "paragraph") { @view_context.capture(self, &block) }
  end

  def image(ratio = nil)
    css = class_names(ratio, "image")
    @view_context.output_buffer << tag.div(class: css)
  end

  def to_s
    classes = class_names(
      "ui",
      { "fluid" => fluid,
        "inverted" => inverted },
      "placeholder"
    )

    tag.div(**merge_html_options(class: classes)) { @content }
  end
end
