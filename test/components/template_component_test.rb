# frozen_string_literal: true

require "test_helper"

class TemplateComponentTest < ComponentTestCase
  test "template renders a template tag" do
    html = render_inline(TemplateComponent)

    assert_includes html, "<template"
  end

  test "template renders block content" do
    html = render_inline(TemplateComponent) { ctx.output_buffer << "nested row" }

    assert_includes html, "nested row"
  end

  test "template forwards html options" do
    html = render_inline(TemplateComponent, data: { nested_form_target: "template" })

    assert_includes html, "nested-form-target"
    assert_includes html, "template"
  end
end
