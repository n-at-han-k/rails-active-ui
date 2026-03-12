# frozen_string_literal: true

# Accordion — collapsible content panels.
#
# Usage:
#   Accordion(styled: true) {
#     text '<div class="title" data-action="click->fui-accordion#toggle" data-fui-accordion-target="title">'.html_safe
#     text '<i class="dropdown icon"></i> Section'.html_safe
#     text '</div>'.html_safe
#     text '<div class="content" data-fui-accordion-target="content"><p>Panel content</p></div>'.html_safe
#   }

class AccordionComponent < Component
  attribute :styled,   :boolean, default: false
  attribute :fluid,    :boolean, default: false
  attribute :inverted, :boolean, default: false
  attribute :exclusive, :boolean, default: true
  attribute :collapsible, :boolean, default: true

  def to_s
    classes = [
      "ui",
      ("styled" if styled),
      ("fluid" if fluid),
      ("inverted" if inverted),
      "accordion"
    ].compact.join(" ")

    data = { controller: "fui-accordion" }
    data[:fui_accordion_exclusive_value] = "false" unless exclusive
    data[:fui_accordion_collapsible_value] = "false" unless collapsible

    tag.div(class: classes, data: data) { @content }
  end
end
