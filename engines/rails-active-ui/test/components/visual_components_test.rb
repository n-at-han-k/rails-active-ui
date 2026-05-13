# frozen_string_literal: true

require "test_helper"

class VisualComponentsTest < ComponentTestCase
  # --- RevealComponent ---

  test "reveal renders with default classes" do
    html = render_inline(RevealComponent)
    assert_includes html, "ui fade reveal"
  end

  test "reveal type slide" do
    html = render_inline(RevealComponent, type: "slide")
    assert_includes html, "slide"
  end

  test "reveal move with direction" do
    html = render_inline(RevealComponent, type: "move", move_direction: "right")
    assert_includes html, "move"
    assert_includes html, "right"
  end

  test "reveal active" do
    html = render_inline(RevealComponent, active: true)
    assert_includes html, "active"
  end

  test "reveal with visible and hidden slots" do
    html = render_inline(RevealComponent) { |c|
      c.visible { ctx.output_buffer << "before".html_safe }
      c.hidden { ctx.output_buffer << "after".html_safe }
    }

    assert_includes html, 'class="visible content"'
    assert_includes html, 'class="hidden content"'
    assert_includes html, "before"
    assert_includes html, "after"
  end

  test "reveal absent slots are omitted" do
    html = render_inline(RevealComponent)
    assert_not_includes html, "visible content"
    assert_not_includes html, "hidden content"
  end

  # --- TransitionComponent ---

  test "transition renders with default classes" do
    html = render_inline(TransitionComponent)
    assert_includes html, "transition"
    assert_includes html, "fade"
  end

  test "transition has stimulus controller" do
    html = render_inline(TransitionComponent)
    assert_includes html, "fui-transition"
  end

  test "transition visible" do
    html = render_inline(TransitionComponent, visible: true)
    assert_includes html, "visible"
  end

  test "transition hidden" do
    html = render_inline(TransitionComponent, visible: false)
    assert_includes html, "hidden"
  end

  test "transition animation type" do
    html = render_inline(TransitionComponent, animation: "scale")
    assert_includes html, "scale"
  end

  test "transition duration in style" do
    html = render_inline(TransitionComponent, duration: 300)
    assert_includes html, "animation-duration:300ms"
  end

  test "transition renders block content" do
    html = render_inline(TransitionComponent) { ctx.output_buffer << "Fading" }
    assert_includes html, "Fading"
  end

  # --- ShapeComponent ---

  test "shape renders with default classes" do
    html = render_inline(ShapeComponent)
    assert_includes html, "ui shape"
  end

  test "shape has stimulus controller" do
    html = render_inline(ShapeComponent)
    assert_includes html, "fui-shape"
  end

  test "shape with type" do
    html = render_inline(ShapeComponent, type: "cube")
    assert_includes html, "cube"
  end

  test "shape renders block content" do
    html = render_inline(ShapeComponent) { ctx.output_buffer << "sides" }
    assert_includes html, "sides"
  end

  # --- AccordionComponent ---

  test "accordion renders with default classes" do
    html = render_inline(AccordionComponent)
    assert_includes html, "ui accordion"
  end

  test "accordion has stimulus controller" do
    html = render_inline(AccordionComponent)
    assert_includes html, "fui-accordion"
  end

  test "accordion styled" do
    html = render_inline(AccordionComponent, styled: true)
    assert_includes html, "styled"
  end

  test "accordion fluid" do
    html = render_inline(AccordionComponent, fluid: true)
    assert_includes html, "fluid"
  end

  test "accordion inverted" do
    html = render_inline(AccordionComponent, inverted: true)
    assert_includes html, "inverted"
  end

  test "accordion non-exclusive sets data value" do
    html = render_inline(AccordionComponent, exclusive: false)
    assert_includes html, "false"
  end

  test "accordion non-collapsible sets data value" do
    html = render_inline(AccordionComponent, collapsible: false)
    assert_includes html, "false"
  end

  test "accordion renders block content" do
    html = render_inline(AccordionComponent) { ctx.output_buffer << "panels" }
    assert_includes html, "panels"
  end
end
