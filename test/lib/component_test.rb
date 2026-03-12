# frozen_string_literal: true

require "test_helper"

class ComponentTest < ComponentTestCase
  # A minimal concrete component for testing the base class contract.
  class TestComponent < Component
    def to_s
      tag.div { @content }
    end
  end

  # --- Safety contract (Book V of the Holy Spec) ---

  test "captured block content is html_safe" do
    @_test_ctx = build_context
    TestComponent.new.render_in(@_test_ctx) { @_test_ctx.output_buffer << "hello" }

    assert @_test_ctx.output_buffer.html_safe?
  end

  test "child component output passes through unescaped" do
    html = render_inline(TestComponent) {
      ctx.output_buffer << '<span class="inner">nested</span>'.html_safe
    }

    assert_includes html, '<span class="inner">nested</span>'
  end

  test "raw strings are escaped" do
    html = render_inline(TestComponent) {
      ctx.output_buffer << '<script>alert("xss")</script>'
    }

    assert_not_includes html, "<script>"
    assert_includes html, "&lt;script&gt;"
  end

  test "mixed safe and unsafe content escapes selectively" do
    html = render_inline(TestComponent) {
      ctx.output_buffer << "<b>safe</b>".html_safe
      ctx.output_buffer << "<script>bad</script>"
    }

    assert_includes html, "<b>safe</b>"
    assert_includes html, "&lt;script&gt;"
  end

  test "nil content renders without error" do
    html = render_inline(TestComponent)

    assert_includes html, "<div>"
    assert_includes html, "</div>"
  end

  test "sequential renders accumulate in buffer" do
    test_ctx = build_context
    first = TestComponent.new
    second = TestComponent.new

    r1 = first.render_in(test_ctx) { test_ctx.output_buffer << "one" }
    test_ctx.output_buffer << r1
    r2 = second.render_in(test_ctx) { test_ctx.output_buffer << "two" }
    test_ctx.output_buffer << r2

    output = test_ctx.output_buffer.to_s
    assert_includes output, "one"
    assert_includes output, "two"
  end

  test "deeply nested components maintain safety" do
    test_ctx = build_context
    outer = TestComponent.new
    r = outer.render_in(test_ctx) {
      inner = TestComponent.new
      inner.render_in(test_ctx) {
        test_ctx.output_buffer << "<img src=x onerror=alert(1)>"
      }
    }
    test_ctx.output_buffer << r

    output = test_ctx.output_buffer.to_s
    assert_not_includes output, "<img src=x onerror"
    assert_includes output, "&lt;img"
  end

  test "base component raises NotImplementedError" do
    test_ctx = build_context
    assert_raises(NotImplementedError) {
      Component.new.render_in(test_ctx)
    }
  end

  test "to_s output is html_safe" do
    html = render_inline(TestComponent) { ctx.output_buffer << "content" }
    assert html.html_safe?
  end
end
