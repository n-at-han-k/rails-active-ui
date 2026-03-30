# frozen_string_literal: true

# BackButton - link that restores Turbo history when possible.
#
# Usage:
#   BackButton(href: "/dashboard")
#   BackButton(href: "/notes", icon: "arrow left")

class BackButtonComponent < Component
  attribute :href,         :string, default: "#"
  attribute :label,        :string, default: "Back"
  attribute :icon,         :string, default: nil
  attribute :css_class,    :string, default: "item"
  attribute :controller,   :string, default: "navigation"
  attribute :action,       :string, default: "navigation#back"
  attribute :turbo_action, :string, default: "replace"

  def to_s
    icon_el = icon ? tag.i(class: "#{icon} icon") : nil
    content = @content.presence || ERB::Util.html_escape(label)

    tag.a(
      **merge_html_options(
        href: href,
        class: css_class,
        data: {
          controller: controller,
          action: action,
          turbo_action: turbo_action
        }
      )
    ) { safe_join([ icon_el, content ]) }
  end
end
