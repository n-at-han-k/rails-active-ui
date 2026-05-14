# frozen_string_literal: true

# SubAccordion — bare nested accordion wrapper.
#
# Renders <div class="accordion"> without the "ui" prefix or Stimulus
# controller, for use inside an AccordionItem's content slot.
#
# Usage:
#   AccordionItem(active: true) { |i|
#     i.title { "Level 1" }
#     i.content {
#       SubAccordion {
#         AccordionItem { |i2|
#           i2.title { "Level 1A" }
#           i2.content { "Nested content" }
#         }
#       }
#     }
#   }

class SubAccordionComponent < Component
  def to_s
    tag.div(**merge_html_options(class: "accordion")) { @content }
  end
end
