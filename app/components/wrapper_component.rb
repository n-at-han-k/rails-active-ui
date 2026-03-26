# frozen_string_literal: true

# Wrapper — a plain <div> with optional id/class.
#
# Usage:
#   Wrapper(id: "main") { text "content" }
#   Wrapper(html_class: "scrollable") { text "content" }

class WrapperComponent < Component
  attribute :html_class, :string, default: nil

  def to_s
    opts = {}
    opts[:class] = html_class if html_class
    tag.div(**merge_html_options(**opts)) { @content }
  end
end
