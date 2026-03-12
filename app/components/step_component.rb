# frozen_string_literal: true

# Step — step indicators for multi-step workflows.
#
# Usage:
#   Step(ordered: true) {
#     text '<div class="active step">Shipping</div>'.html_safe
#     text '<div class="step">Billing</div>'.html_safe
#   }

class StepComponent < Component
  attribute :ordered,     :boolean, default: false
  attribute :vertical,    :boolean, default: false
  attribute :fluid,       :boolean, default: false
  attribute :attached,    :string,  default: nil
  attribute :unstackable, :boolean, default: false
  attribute :size,        :string,  default: nil
  attribute :stackable,   :boolean, default: false

  def to_s
    classes = [
      "ui",
      size,
      ("ordered" if ordered),
      ("vertical" if vertical),
      ("fluid" if fluid),
      ("unstackable" if unstackable),
      ("stackable" if stackable),
      (attached && "#{attached} attached"),
      "steps"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
