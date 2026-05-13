# frozen_string_literal: true

require "test_helper"

class OverlayComponentsTest < ComponentTestCase
  # --- ModalComponent ---

  test "modal renders with default classes" do
    html = render_inline(ModalComponent)
    assert_includes html, "ui modal"
  end

  test "modal has stimulus controller" do
    html = render_inline(ModalComponent)
    assert_includes html, "fui-modal"
  end

  test "modal with size" do
    html = render_inline(ModalComponent, size: "small")
    assert_includes html, "small"
  end

  test "modal basic" do
    html = render_inline(ModalComponent, basic: true)
    assert_includes html, "basic"
  end

  test "modal closable has close icon" do
    html = render_inline(ModalComponent, closable: true)
    assert_includes html, "close icon"
  end

  test "modal not closable has no close icon" do
    html = render_inline(ModalComponent, closable: false)
    assert_not_includes html, "close icon"
  end

  test "modal blurring sets data value" do
    html = render_inline(ModalComponent, blurring: true)
    assert_includes html, "blurring"
  end

  test "modal with all slots" do
    html = render_inline(ModalComponent) { |c|
      c.header { ctx.output_buffer << "Title".html_safe }
      c.content { ctx.output_buffer << "Body".html_safe }
      c.actions { ctx.output_buffer << "Buttons".html_safe }
    }

    assert_includes html, 'class="header"'
    assert_includes html, 'class="content"'
    assert_includes html, 'class="actions"'
    assert_includes html, "Title"
    assert_includes html, "Body"
    assert_includes html, "Buttons"
  end

  test "modal absent slots are omitted" do
    html = render_inline(ModalComponent)
    assert_not_includes html, 'class="header"'
    assert_not_includes html, 'class="content"'
    assert_not_includes html, 'class="actions"'
  end

  test "modal fullscreen" do
    html = render_inline(ModalComponent, fullscreen: true)
    assert_includes html, "fullscreen"
  end

  # --- FlyoutComponent ---

  test "flyout renders with default classes" do
    html = render_inline(FlyoutComponent)
    assert_includes html, "ui right flyout"
  end

  test "flyout has stimulus controller" do
    html = render_inline(FlyoutComponent)
    assert_includes html, "fui-flyout"
  end

  test "flyout direction left" do
    html = render_inline(FlyoutComponent, direction: "left")
    assert_includes html, "left"
  end

  test "flyout closable has close icon" do
    html = render_inline(FlyoutComponent)
    assert_includes html, "close icon"
  end

  test "flyout not closable has no close icon" do
    html = render_inline(FlyoutComponent, closable: false)
    assert_not_includes html, "close icon"
  end

  test "flyout with all slots" do
    html = render_inline(FlyoutComponent) { |c|
      c.header { ctx.output_buffer << "Settings".html_safe }
      c.content { ctx.output_buffer << "Flyout body".html_safe }
      c.actions { ctx.output_buffer << "Save".html_safe }
    }

    assert_includes html, 'class="header"'
    assert_includes html, 'class="content"'
    assert_includes html, 'class="actions"'
  end

  # --- PopupComponent ---

  test "popup renders as span" do
    html = render_inline(PopupComponent)
    assert_includes html, "<span"
  end

  test "popup has stimulus controller" do
    html = render_inline(PopupComponent)
    assert_includes html, "fui-popup"
  end

  test "popup with content" do
    html = render_inline(PopupComponent, content: "Tooltip text")
    assert_includes html, "Tooltip text"
  end

  test "popup with title" do
    html = render_inline(PopupComponent, title: "Info")
    assert_includes html, "Info"
  end

  test "popup position" do
    html = render_inline(PopupComponent, position: "bottom left")
    assert_includes html, "bottom left"
  end

  test "popup hover is default (no on-value emitted)" do
    html = render_inline(PopupComponent, on: "hover")
    assert_includes html, "fui-popup"
    refute_includes html, "fui-popup-on-value"
  end

  test "popup click on-value" do
    html = render_inline(PopupComponent, on: "click")
    assert_includes html, "click"
  end

  test "popup renders block content" do
    html = render_inline(PopupComponent) { ctx.output_buffer << "hover me" }
    assert_includes html, "hover me"
  end

  # --- DimmerComponent ---

  test "dimmer renders with default classes" do
    html = render_inline(DimmerComponent)
    assert_includes html, "ui dimmer"
  end

  test "dimmer has stimulus controller" do
    html = render_inline(DimmerComponent)
    assert_includes html, "fui-dimmer"
  end

  test "dimmer active" do
    html = render_inline(DimmerComponent, active: true)
    assert_includes html, "active"
  end

  test "dimmer inverted" do
    html = render_inline(DimmerComponent, inverted: true)
    assert_includes html, "inverted"
  end

  test "dimmer page" do
    html = render_inline(DimmerComponent, page: true)
    assert_includes html, "page"
  end

  test "dimmer with content wraps in content div" do
    html = render_inline(DimmerComponent) { ctx.output_buffer << "Loading" }
    assert_includes html, 'class="content"'
    assert_includes html, "Loading"
  end

  test "dimmer without content has no content div" do
    html = render_inline(DimmerComponent)
    assert_not_includes html, 'class="content"'
  end
end
