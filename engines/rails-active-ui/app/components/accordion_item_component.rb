# frozen_string_literal: true

# AccordionItem — a single panel inside an Accordion.
#
# Renders two sibling divs (.title + .content) with no wrapper,
# exactly the structure Fomantic-UI expects as direct children of
# .ui.accordion or a nested .accordion.
#
# Usage:
#   Accordion(styled: true) {
#     AccordionItem(active: true) { |i|
#       i.title { "What is a dog?" }
#       i.content {
#         Paragraph { "A dog is a type of domesticated animal." }
#       }
#     }
#   }

class AccordionItemComponent < Component
  attribute :active, :boolean, default: false
  attribute :icon,   :string,  default: "dropdown"

  slot :title
  slot :content

  def to_s
    title_classes   = class_names({ "active" => active }, "title")
    content_classes = class_names({ "active" => active }, "content")

    title_el = @slots[:title] ? tag.div(class: title_classes) {
      safe_join([ tag.i(class: "#{icon} icon"), @slots[:title] ])
    } : nil

    content_el = @slots[:content] ? tag.div(class: content_classes) {
      @slots[:content]
    } : nil

    safe_join([ title_el, content_el ])
  end
end
