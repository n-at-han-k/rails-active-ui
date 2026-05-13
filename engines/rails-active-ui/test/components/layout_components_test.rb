# frozen_string_literal: true

require "test_helper"

class LayoutComponentsTest < ComponentTestCase
  # --- ContainerComponent ---

  test "container renders with default classes" do
    html = render_inline(ContainerComponent)
    assert_includes html, 'class="ui container"'
  end

  test "container text attribute adds text class" do
    html = render_inline(ContainerComponent, text: true)
    assert_includes html, "ui text container"
  end

  test "container fluid attribute adds fluid class" do
    html = render_inline(ContainerComponent, fluid: true)
    assert_includes html, "ui fluid container"
  end

  test "container renders block content" do
    html = render_inline(ContainerComponent) { ctx.output_buffer << "Hello" }
    assert_includes html, "Hello"
  end

  # --- GridComponent ---

  test "grid renders with default classes" do
    html = render_inline(GridComponent)
    assert_includes html, 'class="ui grid"'
  end

  test "grid columns attribute uses word form" do
    html = render_inline(GridComponent, columns: 3)
    assert_includes html, "three column"
  end

  test "grid stackable attribute" do
    html = render_inline(GridComponent, stackable: true)
    assert_includes html, "stackable"
  end

  test "grid equal_width attribute" do
    html = render_inline(GridComponent, equal_width: true)
    assert_includes html, "equal width"
  end

  test "grid divided attribute" do
    html = render_inline(GridComponent, divided: "vertically")
    assert_includes html, "vertically divided"
  end

  test "grid celled attribute" do
    html = render_inline(GridComponent, celled: "internally")
    assert_includes html, "internally celled"
  end

  test "grid container attribute" do
    html = render_inline(GridComponent, container: true)
    assert_includes html, "container"
  end

  test "grid reversed attribute" do
    html = render_inline(GridComponent, reversed: "mobile")
    assert_includes html, "mobile reversed"
  end

  # --- SegmentComponent ---

  test "segment renders with default classes" do
    html = render_inline(SegmentComponent)
    assert_includes html, 'class="ui segment"'
  end

  test "segment raised attribute" do
    html = render_inline(SegmentComponent, raised: true)
    assert_includes html, "raised"
  end

  test "segment inverted with color" do
    html = render_inline(SegmentComponent, inverted: true, color: "blue")
    assert_includes html, "blue"
    assert_includes html, "inverted"
  end

  test "segment padded very" do
    html = render_inline(SegmentComponent, padded: "very")
    assert_includes html, "very padded"
  end

  test "segment attached" do
    html = render_inline(SegmentComponent, attached: true)
    assert_includes html, "attached"
  end

  test "segment placeholder" do
    html = render_inline(SegmentComponent, placeholder_seg: true)
    assert_includes html, "placeholder"
  end

  test "segment renders block content" do
    html = render_inline(SegmentComponent) { ctx.output_buffer << "Content" }
    assert_includes html, "Content"
  end

  # --- HStackComponent ---

  test "hstack renders with flex display" do
    html = render_inline(HStackComponent)
    assert_includes html, "display:flex"
  end

  test "hstack spacing adds gap" do
    html = render_inline(HStackComponent, spacing: 12)
    assert_includes html, "gap:12px"
  end

  test "hstack justify between" do
    html = render_inline(HStackComponent, justify: "between")
    assert_includes html, "justify-content:space-between"
  end

  test "hstack align center" do
    html = render_inline(HStackComponent, align: "center")
    assert_includes html, "align-items:center"
  end

  test "hstack padding" do
    html = render_inline(HStackComponent, padding: 16)
    assert_includes html, "padding:16px"
  end

  test "hstack rounded" do
    html = render_inline(HStackComponent, rounded: "lg")
    assert_includes html, "border-radius:0.5rem"
  end

  test "hstack shadow adds class" do
    html = render_inline(HStackComponent, shadow: "xs")
    assert_includes html, "shadow-border-xs"
  end

  test "hstack renders block content" do
    html = render_inline(HStackComponent) { ctx.output_buffer << "Items" }
    assert_includes html, "Items"
  end

  # --- VStackComponent ---

  test "vstack renders with flex-direction column" do
    html = render_inline(VStackComponent)
    assert_includes html, "flex-direction:column"
  end

  test "vstack spacing adds gap" do
    html = render_inline(VStackComponent, spacing: 8)
    assert_includes html, "gap:8px"
  end

  test "vstack align center" do
    html = render_inline(VStackComponent, align: "center")
    assert_includes html, "align-items:center"
  end

  test "vstack renders block content" do
    html = render_inline(VStackComponent) { ctx.output_buffer << "Stacked" }
    assert_includes html, "Stacked"
  end

  # --- RailComponent ---

  test "rail renders with default left position" do
    html = render_inline(RailComponent)
    assert_includes html, "ui left rail"
  end

  test "rail right position" do
    html = render_inline(RailComponent, position: "right")
    assert_includes html, "ui right rail"
  end

  test "rail close attribute" do
    html = render_inline(RailComponent, close: true)
    assert_includes html, "close"
  end

  test "rail dividing attribute" do
    html = render_inline(RailComponent, dividing: true)
    assert_includes html, "dividing"
  end

  test "rail renders block content" do
    html = render_inline(RailComponent) { ctx.output_buffer << "Side" }
    assert_includes html, "Side"
  end

  # --- ColumnComponent ---

  test "column renders with default class" do
    html = render_inline(ColumnComponent)
    assert_includes html, 'class="column"'
  end

  test "column with fixed width" do
    html = render_inline(ColumnComponent, width: 4)
    assert_includes html, "four wide column"
  end

  test "column with responsive widths" do
    html = render_inline(ColumnComponent, computer: 4, tablet: 8, mobile: 16)
    assert_includes html, "four wide computer"
    assert_includes html, "eight wide tablet"
    assert_includes html, "sixteen wide mobile"
  end

  test "column with alignment" do
    html = render_inline(ColumnComponent, aligned: "center")
    assert_includes html, "center aligned"
  end

  test "column with content" do
    html = render_inline(ColumnComponent, width: 8) { ctx.output_buffer << "Content" }
    assert_includes html, "Content"
    assert_includes html, "eight wide column"
  end

  # --- RowComponent ---

  test "row renders with default class" do
    html = render_inline(RowComponent)
    assert_includes html, 'class="row"'
  end

  test "row with column count" do
    html = render_inline(RowComponent, columns: 3)
    assert_includes html, "three column row"
  end

  test "row centered" do
    html = render_inline(RowComponent, centered: true)
    assert_includes html, "centered"
  end

  # --- PusherComponent ---

  test "pusher renders with class" do
    html = render_inline(PusherComponent)
    assert_includes html, 'class="pusher"'
  end

  test "pusher wraps content" do
    html = render_inline(PusherComponent) { ctx.output_buffer << "Main content" }
    assert_includes html, "Main content"
    assert_includes html, "pusher"
  end

  # --- LinkToComponent ---

  test "link renders anchor tag" do
    html = render_inline(LinkToComponent, href: "/about") { ctx.output_buffer << "About" }
    assert_includes html, "<a"
    assert_includes html, 'href="/about"'
    assert_includes html, "About"
  end

  test "link with target" do
    html = render_inline(LinkToComponent, href: "/help", target: "_blank")
    assert_includes html, 'target="_blank"'
  end

  # --- SegmentGroupComponent ---

  test "segment group renders with default classes" do
    html = render_inline(SegmentGroupComponent)
    assert_includes html, 'class="ui segments"'
  end

  test "segment group horizontal" do
    html = render_inline(SegmentGroupComponent, aligned: "horizontal")
    assert_includes html, "ui horizontal segments"
  end

  test "segment group compact" do
    html = render_inline(SegmentGroupComponent, compact: true)
    assert_includes html, "compact"
  end

  test "segment group basic" do
    html = render_inline(SegmentGroupComponent, basic: true)
    assert_includes html, "basic"
  end

  test "segment group wraps content" do
    html = render_inline(SegmentGroupComponent) { ctx.output_buffer << "inner" }
    assert_includes html, "inner"
    assert_includes html, "ui segments"
  end

  # --- SubHeaderComponent ---

  test "sub header renders with class" do
    html = render_inline(SubHeaderComponent) { ctx.output_buffer << "Subtitle" }
    assert_includes html, 'class="sub header"'
    assert_includes html, "Subtitle"
  end

  # --- OverlayComponent ---

  test "overlay renders with class" do
    html = render_inline(OverlayComponent) { ctx.output_buffer << "content" }
    assert_includes html, 'class="overlay"'
    assert_includes html, "content"
  end

  # --- ItemGroupComponent ---

  test "item group renders with default classes" do
    html = render_inline(ItemGroupComponent)
    assert_includes html, 'class="ui items"'
  end

  test "item group divided relaxed" do
    html = render_inline(ItemGroupComponent, divided: true, relaxed: true)
    assert_includes html, "divided"
    assert_includes html, "relaxed"
  end
end
