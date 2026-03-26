# frozen_string_literal: true

# Accordion — collapsible content panel using <details>/<summary>.
#
# Usage:
#   Accordion(attached: true) { |a|
#     a.title { text "Section" }
#     text "Panel content"
#   }

class AccordionComponent < Component
  include Attachable

  attribute :raised,    :boolean, default: false
  attribute :inverted,  :boolean, default: false
  attribute :basic,     :boolean, default: false
  attribute :compact,   :boolean, default: false
  attribute :color,     :string,  default: nil
  attribute :secondary, :boolean, default: false
  attribute :open,      :boolean, default: false

  slot :title

  def to_s
    classes = class_names(
      "ui",
      color,
      { "attached" => attached, "raised" => raised, "inverted" => inverted,
        "basic" => basic, "compact" => compact, "secondary" => secondary },
      "segment"
    )

    opts = merge_html_options(class: classes)
    opts[:open] = "" if open

    tag.details(**opts) {
      safe_join([
        tag.summary { @slots[:title] || "" },
        tag.div { @content }
      ])
    }
  end
end
