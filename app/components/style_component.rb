# frozen_string_literal: true

# Style — inline <style> tag.
#
# Usage:
#   Style(".my-class { color: red; }")

class StyleComponent < Component
  def initialize(css = nil, **kwargs)
    @css = css
    super(**kwargs)
  end

  def render_in(context, &block)
    @view_context = context
    @css ||= context.capture(&block) if block
    to_s
  end

  def to_s
    tag.style { @css&.html_safe }
  end
end
