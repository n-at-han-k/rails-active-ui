# frozen_string_literal: true

# Breadcrumb — navigation breadcrumb trail.
#
# Usage:
#   Breadcrumb {
#     text '<a class="section">Home</a>'.html_safe
#     text '<div class="divider">/</div>'.html_safe
#     text '<div class="active section">Current</div>'.html_safe
#   }
#   Breadcrumb(size: :large)

class BreadcrumbComponent < Component
  attribute :size,    :string, default: nil
  attribute :divider, :string, default: nil

  def to_s
    classes = [
      "ui",
      size,
      "breadcrumb"
    ].compact.join(" ")

    tag.div(class: classes) { @content }
  end
end
