# frozen_string_literal: true

class FormComponent
  def initialize(**kwargs)
    @form_options = kwargs
  end

  def render_in(context, &block)
    @view_context = context

    if @form_options[:url] || @form_options[:model]
      @_block = block
      if Rails.env.development?
        "<!-- BEGIN #{self.class.name} -->#{self}<!-- END #{self.class.name} -->".html_safe
      else
        to_s
      end
    else
      @content = context.capture(self, &block) if block
      @content = ERB::Util.html_escape(@content) unless @content.nil? || @content.html_safe?
      if Rails.env.development?
        "<!-- BEGIN #{self.class.name} -->#{self}<!-- END #{self.class.name} -->".html_safe
      else
        to_s
      end
    end
  end

  def to_s
    if @form_options[:url] || @form_options[:model]
      opts = { class: "ui form", data: { controller: "fui-form" } }
      opts.merge!(@form_options)

      @view_context.form_with(**opts) { |f|
        previous = @view_context.instance_variable_get(:@_form_builder)
        @view_context.instance_variable_set(:@_form_builder, f)
        begin
          @_block ? @view_context.instance_exec(&@_block) : "".html_safe
        ensure
          @view_context.instance_variable_set(:@_form_builder, previous)
        end
      }
    else
      opts = { class: "ui form", data: { controller: "fui-form" } }
      opts.merge!(@form_options)

      tag.form(**opts) { @content }
    end
  end

  private

  def tag
    @view_context.tag
  end
end
