# frozen_string_literal: true

# Field — Fomantic UI field wrapper.
#
# Renders <div class="... field"> for use inside forms.
#
# Usage:
#
#   Field {
#     Input(icon: "user", icon_position: "left") {
#       TextField(:email, placeholder: "E-mail address")
#     }
#   }
#
#   Field(required: true, label: "Email") {
#     TextField(:email, placeholder: "you@example.com")
#   }

class FieldComponent < Component
  attribute :required, :boolean, default: false
  attribute :disabled, :boolean, default: false
  attribute :error,    :boolean, default: false
  attribute :warning,  :boolean, default: false
  attribute :inline,   :boolean, default: false
  attribute :width,    :string,  default: nil
  attribute :label,    :string,  default: nil

  def to_s
    classes = class_names(
      width,
      { "required" => required, "disabled" => disabled,
        "error" => error, "warning" => warning, "inline" => inline },
      "field"
    )

    label_el = label ? tag.label(label) : nil

    tag.div(**merge_html_options(class: classes)) {
      safe_join([ label_el, @content ].compact)
    }
  end
end
