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

  # --- StepGroupComponent ---

  test "step group renders with default classes" do
    html = render_inline(StepGroupComponent)
    assert_includes html, 'class="ui steps"'
  end

  test "step group ordered" do
    html = render_inline(StepGroupComponent, ordered: true)
    assert_includes html, "ordered"
  end

  test "step group vertical" do
    html = render_inline(StepGroupComponent, vertical: true)
    assert_includes html, "vertical"
  end

  test "step group with size" do
    html = render_inline(StepGroupComponent, size: "small")
    assert_includes html, "small"
  end

  test "step group attached" do
    html = render_inline(StepGroupComponent, attached: "top")
    assert_includes html, "top attached"
  end

  # --- StepComponent ---

  test "step renders with default class" do
    html = render_inline(StepComponent)
    assert_includes html, 'class="step"'
  end

  test "step active" do
    html = render_inline(StepComponent, active: true)
    assert_includes html, "active step"
  end

  test "step disabled" do
    html = render_inline(StepComponent, disabled: true)
    assert_includes html, "disabled step"
  end

  test "step completed" do
    html = render_inline(StepComponent, completed: true)
    assert_includes html, "completed step"
  end

  test "step with title and description" do
    html = render_inline(StepComponent, title: "Shipping", description: "Choose options")
    assert_includes html, "Shipping"
    assert_includes html, "Choose options"
    assert_includes html, "title"
    assert_includes html, "description"
    assert_includes html, "content"
  end

  test "step with icon" do
    html = render_inline(StepComponent, icon: "truck", title: "Shipping")
    assert_includes html, "truck icon"
  end

  test "step as link" do
    html = render_inline(StepComponent, href: "/shipping", title: "Shipping")
    assert_includes html, "<a"
    assert_includes html, 'href="/shipping"'
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

  # --- MenuItemComponent ---

  test "menu item renders as div by default" do
    html = render_inline(MenuItemComponent) { ctx.output_buffer << "Home" }
    assert_includes html, "<div"
    assert_includes html, 'class="item"'
    assert_includes html, "Home"
  end

  test "menu item renders as anchor with href" do
    html = render_inline(MenuItemComponent, href: "/home") { ctx.output_buffer << "Home" }
    assert_includes html, "<a"
    assert_includes html, 'href="/home"'
  end

  test "menu item active" do
    html = render_inline(MenuItemComponent, active: true)
    assert_includes html, "active item"
  end

  test "menu item header" do
    html = render_inline(MenuItemComponent, header: true) { ctx.output_buffer << "Section" }
    assert_includes html, "header item"
  end

  test "menu item with icon" do
    html = render_inline(MenuItemComponent, icon: "home") { ctx.output_buffer << "Home" }
    assert_includes html, "home icon"
    assert_includes html, "Home"
  end

  # --- MenuMenuComponent ---

  test "menu menu renders with class" do
    html = render_inline(MenuMenuComponent)
    assert_includes html, 'class="menu"'
  end

  test "menu menu with position" do
    html = render_inline(MenuMenuComponent, position: "right")
    assert_includes html, "right menu"
  end

  test "menu menu wraps content" do
    html = render_inline(MenuMenuComponent, position: "left") { ctx.output_buffer << "items" }
    assert_includes html, "items"
    assert_includes html, "left menu"
  end
end
