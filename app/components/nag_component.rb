# frozen_string_literal: true

# Nag — persistent notification/cookie nag bar.
#
# Usage:
#   Nag { text "We use cookies." }
#   Nag(fixed: true) { text "Update available!" }

class NagComponent < Component
  attribute :fixed, :boolean, default: false

  def to_s
    classes = [
      "ui",
      ("fixed" if fixed),
      "nag"
    ].compact.join(" ")

    close_el = tag.i(class: "close icon", data: { action: "click->fui-nag#dismiss" })

    tag.div(class: classes, data: { controller: "fui-nag" }) {
      safe_join([ close_el, @content ])
    }
  end
end
