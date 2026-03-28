# frozen_string_literal: true

# The Ancestral Component
#
# All components descend from this class. It provides:
# - ActiveModel::Attributes for declarative attribute definitions
# - Named slots via the `slot` class macro
# - The `render_in` contract: block capture, HTML safety, dev annotations
#
# See: specs/the-holy-view-spec.md, specs/the-holy-slot-spec.md

class Component
  include ActiveModel::Model
  include ActiveModel::Attributes

  # HTML pass-through keys that bypass ActiveModel attributes
  HTML_OPTIONS = %i[id class data style role tabindex title aria target rel].to_set.freeze

  class_attribute :slot_names, default: []

  def initialize(**kwargs)
    @html_options = kwargs.extract!(*HTML_OPTIONS)
    super(**kwargs)
  end

  def self.default(**overrides)
    overrides.each do |name, value|
      type = attribute_types.fetch(name.to_s).type
      attribute name, type, default: value
    end
  end

  def self.slot(name)
    self.slot_names = slot_names + [ name ]

    define_method(name) { |&block|
      @slots[name] = @view_context.capture(&block)
    }
  end

  def render_in(context, &block)
    @view_context = context
    @slots = {}
    @content = context.capture(self, &block) if block
    @content = ERB::Util.html_escape(@content) unless @content.nil? || @content.html_safe?

    if Rails.env.development?
      "<!-- BEGIN #{self.class.name} -->#{self}<!-- END #{self.class.name} -->".html_safe
    else
      to_s
    end
  end

  def to_s
    raise NotImplementedError
  end

  private

  # Merge component classes with html_options. Call from to_s:
  #   tag.div(**merge_html_options(class: classes)) { @content }
  def merge_html_options(**opts)
    html = @html_options || {}
    return opts if html.empty?

    merged = opts.merge(html)
    # Merge classes together rather than overwriting
    if opts[:class] && html[:class]
      merged[:class] = "#{opts[:class]} #{html[:class]}"
    end
    # Deep merge data hashes
    if opts[:data] && html[:data]
      merged[:data] = opts[:data].merge(html[:data])
    end
    merged
  end

  def tag
    @view_context.tag
  end

  def safe_join(parts, sep = nil)
    @view_context.safe_join(parts.compact, sep)
  end

  def class_names(*args)
    @view_context.class_names(*args)
  end
end
