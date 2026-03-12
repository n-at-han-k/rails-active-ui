# frozen_string_literal: true

require "test_helper"

class NavigationComponentsTest < ComponentTestCase
  # --- MenuComponent ---

  test "menu renders with default classes" do
    html = render_inline(MenuComponent)
    assert_includes html, 'class="ui menu"'
  end

  test "menu secondary pointing" do
    html = render_inline(MenuComponent, secondary: true, pointing: true)
    assert_includes html, "secondary"
    assert_includes html, "pointing"
  end

  test "menu vertical" do
    html = render_inline(MenuComponent, vertical: true)
    assert_includes html, "vertical"
  end

  test "menu inverted with color" do
    html = render_inline(MenuComponent, inverted: true, color: "blue")
    assert_includes html, "inverted"
    assert_includes html, "blue"
  end

  test "menu fixed" do
    html = render_inline(MenuComponent, fixed: "top")
    assert_includes html, "top fixed"
  end

  test "menu items count uses word form" do
    html = render_inline(MenuComponent, items: 3)
    assert_includes html, "three item"
  end

  test "menu tabular" do
    html = render_inline(MenuComponent, tabular: true)
    assert_includes html, "tabular"
  end

  test "menu renders block content" do
    html = render_inline(MenuComponent) { ctx.output_buffer << "items" }
    assert_includes html, "items"
  end

  # --- BreadcrumbComponent ---

  test "breadcrumb renders with default classes" do
    html = render_inline(BreadcrumbComponent)
    assert_includes html, 'class="ui breadcrumb"'
  end

  test "breadcrumb with size" do
    html = render_inline(BreadcrumbComponent, size: "large")
    assert_includes html, "large"
  end

  test "breadcrumb renders block content" do
    html = render_inline(BreadcrumbComponent) { ctx.output_buffer << "trail" }
    assert_includes html, "trail"
  end

  # --- StepComponent ---

  test "step renders with default classes" do
    html = render_inline(StepComponent)
    assert_includes html, 'class="ui steps"'
  end

  test "step ordered" do
    html = render_inline(StepComponent, ordered: true)
    assert_includes html, "ordered"
  end

  test "step vertical" do
    html = render_inline(StepComponent, vertical: true)
    assert_includes html, "vertical"
  end

  test "step with size" do
    html = render_inline(StepComponent, size: "small")
    assert_includes html, "small"
  end

  test "step attached" do
    html = render_inline(StepComponent, attached: "top")
    assert_includes html, "top attached"
  end

  # --- TabComponent ---

  test "tab renders with default classes" do
    html = render_inline(TabComponent)
    assert_includes html, 'class="ui tab"'
  end

  test "tab active" do
    html = render_inline(TabComponent, active: true)
    assert_includes html, "active"
  end

  test "tab has stimulus controller" do
    html = render_inline(TabComponent)
    assert_includes html, "fui-tab"
  end

  test "tab with path sets data-tab" do
    html = render_inline(TabComponent, path: "settings")
    assert_includes html, "settings"
  end

  test "tab renders block content" do
    html = render_inline(TabComponent) { ctx.output_buffer << "pane" }
    assert_includes html, "pane"
  end

  # --- SidebarComponent ---

  test "sidebar renders with default classes" do
    html = render_inline(SidebarComponent)
    assert_includes html, "ui left"
    assert_includes html, "sidebar"
    assert_includes html, "menu"
  end

  test "sidebar direction right" do
    html = render_inline(SidebarComponent, direction: "right")
    assert_includes html, "right"
  end

  test "sidebar visible" do
    html = render_inline(SidebarComponent, visible: true)
    assert_includes html, "visible"
  end

  test "sidebar inverted" do
    html = render_inline(SidebarComponent, inverted: true)
    assert_includes html, "inverted"
  end

  test "sidebar has stimulus controller" do
    html = render_inline(SidebarComponent)
    assert_includes html, "fui-sidebar"
  end

  test "sidebar transition value" do
    html = render_inline(SidebarComponent, transition: "push")
    assert_includes html, "push"
  end
end
