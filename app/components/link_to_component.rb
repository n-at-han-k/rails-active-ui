# frozen_string_literal: true

# LinkTo - anchor element.
#
# Usage:
#   LinkTo(href: "/about") { text "About Us" }
#   LinkTo(href: "/help", target: "_blank") { text "Help" }

class LinkToComponent < Component
  attribute :href,      :string, default: "#"
  attribute :target,    :string, default: nil
  attribute :rel,       :string, default: nil
  attribute :css_class, :string, default: nil

  def to_s
    opts = { href: href }
    opts[:class] = css_class if css_class
    opts[:target] = target if target
    opts[:rel] = rel if rel

    tag.a(**merge_html_options(**opts)) { @content }
  end
end
