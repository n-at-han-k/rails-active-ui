# frozen_string_literal: true

# Template - a plain <template> element.
#
# Usage:
#   Template { text "content" }
#   Template(data: { nested_form_target: "template" }) { text "..." }

class TemplateComponent < Component
  def to_s
    tag.template(**merge_html_options) { @content }
  end
end
