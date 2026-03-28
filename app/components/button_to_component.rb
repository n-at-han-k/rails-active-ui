# frozen_string_literal: true

# ButtonTo — a form-based button for non-GET actions (DELETE, PATCH, etc).
#
# Wraps Rails button_to with Fomantic-UI button styling.
#
# Usage:
#   ButtonTo(url: "/items/1", method: :delete, color: "red", confirm: "Sure?") {
#     Icon(name: "trash")
#     text " Delete"
#   }

class ButtonToComponent < Component
  include Sizeable

  attribute :url,      :string
  attribute :method,   :string,  default: "post"
  attribute :color,    :string,  default: nil
  attribute :variant,  :string,  default: nil
  attribute :icon,     :string,  default: nil
  attribute :disabled, :boolean, default: false
  attribute :confirm,  :string,  default: nil

  def to_s
    classes = class_names(
      "ui",
      color,
      size,
      variant,
      { "disabled" => disabled },
      "button"
    )

    html_opts = { method: method.to_sym }
    html_opts[:form] = { data: { turbo_confirm: confirm } } if confirm

    @view_context.button_to(
      url,
      html_opts.merge(class: classes)
    ) { @content }
  end
end
