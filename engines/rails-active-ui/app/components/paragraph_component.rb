# frozen_string_literal: true

# Paragraph — a plain <p> element.
#
# Usage:
#   Paragraph { text "Some text content" }
#   Paragraph(id: "intro") { text "Introduction" }

class ParagraphComponent < Component
  def to_s
    tag.p(**merge_html_options) { @content }
  end
end
