# frozen_string_literal: true

# Accordion — collapsible content panels.
#
# Renders a Fomantic-UI accordion container wired to the fui-accordion
# Stimulus controller.  Block content should contain raw `.title` and
# `.content` div pairs (built with `tag.div`).
#
# Usage:
#   Accordion(styled: true) {
#     tag.div(class: "active title") {
#       safe_join([tag.i(class: "dropdown icon"), "What is a dog?"])
#     }
#     tag.div(class: "active content") {
#       tag.p { "A dog is a type of domesticated animal." }
#     }
#   }

class AccordionComponent < Component
  include Attachable

  attribute :styled,      :boolean, default: false
  attribute :fluid,       :boolean, default: false
  attribute :inverted,    :boolean, default: false
  attribute :basic,       :boolean, default: false
  attribute :compact,     :boolean, default: false
  attribute :very_compact, :boolean, default: false
  attribute :tree,        :boolean, default: false
  attribute :color,       :string,  default: nil
  attribute :exclusive,   :boolean, default: true
  attribute :collapsible, :boolean, default: true
  attribute :duration,    :integer, default: 350

  def to_s
    classes = class_names(
      "ui",
      color,
      {
        "attached"     => attached,
        "styled"       => styled,
        "fluid"        => fluid,
        "inverted"     => inverted,
        "basic"        => basic && styled,
        "compact"      => compact,
        "very compact" => very_compact,
        "tree"         => tree
      },
      "accordion"
    )

    data = { controller: "fui-accordion" }
    data[:fui_accordion_exclusive_value]   = "false" unless exclusive
    data[:fui_accordion_collapsible_value] = "false" unless collapsible
    data[:fui_accordion_duration_value]    = duration.to_s if duration != 350

    opts = merge_html_options(class: classes, data: data)

    tag.div(**opts) { @content }
  end
end
