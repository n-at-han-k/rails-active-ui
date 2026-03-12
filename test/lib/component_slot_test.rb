# frozen_string_literal: true

require "test_helper"

class ComponentSlotTest < ComponentTestCase
  class SlottedComponent < Component
    slot :header
    slot :footer

    def to_s
      parts = [
        @slots[:header] ? tag.header { @slots[:header] } : nil,
        @content.presence ? tag.main { @content } : nil,
        @slots[:footer] ? tag.footer { @slots[:footer] } : nil
      ]

      tag.div(class: "slotted") { safe_join(parts) }
    end
  end

  # --- Slot mechanism tests (Book VI of the Holy Slot Spec) ---

  test "slots capture named content" do
    html = render_inline(SlottedComponent) { |c|
      c.header { ctx.output_buffer << "Head".html_safe }
      c.footer { ctx.output_buffer << "Foot".html_safe }
    }

    assert_includes html, "<header>Head</header>"
    assert_includes html, "<footer>Foot</footer>"
  end

  test "absent slots are omitted from output" do
    html = render_inline(SlottedComponent) { |c|
      c.header { ctx.output_buffer << "Head".html_safe }
    }

    assert_includes html, "<header>Head</header>"
    assert_not_includes html, "<footer>"
  end

  test "all slots absent renders without error" do
    html = render_inline(SlottedComponent) { |c|
      # no slots assigned
    }

    assert_includes html, '<div class="slotted">'
  end

  test "bare content alongside slots lands in @content" do
    html = render_inline(SlottedComponent) { |c|
      c.header { ctx.output_buffer << "Head".html_safe }
      ctx.output_buffer << "Body content".html_safe
    }

    assert_includes html, "<header>Head</header>"
    assert_includes html, "<main>Body content</main>"
  end

  test "slot content is html-escaped when unsafe" do
    html = render_inline(SlottedComponent) { |c|
      c.header { ctx.output_buffer << '<script>alert("xss")</script>' }
    }

    assert_not_includes html, "<script>"
    assert_includes html, "&lt;script&gt;"
  end

  test "slot content preserves html_safe content" do
    html = render_inline(SlottedComponent) { |c|
      c.header { ctx.output_buffer << '<span class="safe">OK</span>'.html_safe }
    }

    assert_includes html, '<span class="safe">OK</span>'
  end

  test "backward compatibility — no block parameter works as before" do
    html = render_inline(SlottedComponent) {
      ctx.output_buffer << "Just content".html_safe
    }

    assert_includes html, "<main>Just content</main>"
    assert_not_includes html, "<header>"
    assert_not_includes html, "<footer>"
  end

  test "slots do not leak between subclasses" do
    other_class = Class.new(Component) do
      slot :sidebar

      define_method(:to_s) {
        tag.div { @slots[:sidebar] }
      }
    end

    assert_includes SlottedComponent.slot_names, :header
    assert_includes SlottedComponent.slot_names, :footer
    assert_not_includes SlottedComponent.slot_names, :sidebar

    assert_includes other_class.slot_names, :sidebar
    assert_not_includes other_class.slot_names, :header
  end

  test "nested slotted components maintain independence" do
    test_ctx = build_context
    outer = SlottedComponent.new
    r = outer.render_in(test_ctx) { |o|
      o.header {
        inner = SlottedComponent.new
        inner.render_in(test_ctx) { |i|
          i.header { test_ctx.output_buffer << "Inner head".html_safe }
        }
      }
    }
    test_ctx.output_buffer << r

    output = test_ctx.output_buffer.to_s
    assert output.scan("<header>").length >= 2
    assert_includes output, "Inner head"
  end

  test "slot_names returns declared slot names" do
    assert_equal [ :header, :footer ], SlottedComponent.slot_names
  end

  test "component with no slots has empty slot_names" do
    plain_class = Class.new(Component) do
      define_method(:to_s) { tag.div { @content } }
    end

    assert_equal [], plain_class.slot_names
  end
end
