# frozen_string_literal: true

require "test_helper"

class FeedbackComponentsTest < ComponentTestCase
  # --- MessageComponent ---

  test "message renders with default classes" do
    html = render_inline(MessageComponent)
    assert_includes html, "ui message"
  end

  test "message with type" do
    html = render_inline(MessageComponent, type: "success")
    assert_includes html, "success"
  end

  test "message with icon wraps content" do
    html = render_inline(MessageComponent, icon: "inbox") {
      ctx.output_buffer << "Check inbox".html_safe
    }

    assert_includes html, "inbox icon"
    assert_includes html, 'class="content"'
  end

  test "message dismissible has close icon" do
    html = render_inline(MessageComponent, dismissible: true)
    assert_includes html, "close icon"
  end

  test "message not dismissible has no close icon" do
    html = render_inline(MessageComponent, dismissible: false)
    assert_not_includes html, "close icon"
  end

  test "message with header slot" do
    html = render_inline(MessageComponent) { |c|
      c.header { ctx.output_buffer << "Alert".html_safe }
    }

    assert_includes html, 'class="header"'
    assert_includes html, "Alert"
  end

  test "message floating" do
    html = render_inline(MessageComponent, floating: true)
    assert_includes html, "floating"
  end

  test "message color" do
    html = render_inline(MessageComponent, color: "yellow")
    assert_includes html, "yellow"
  end

  test "message attached" do
    html = render_inline(MessageComponent, attached: true)
    assert_includes html, "attached"
  end

  # --- ProgressComponent ---

  test "progress renders with default classes" do
    html = render_inline(ProgressComponent)
    assert_includes html, "ui progress"
  end

  test "progress has stimulus controller" do
    html = render_inline(ProgressComponent)
    assert_includes html, "fui-progress"
  end

  test "progress bar width is calculated" do
    html = render_inline(ProgressComponent, value: 65, total: 100)
    assert_includes html, "width:65%"
  end

  test "progress bar zero total" do
    html = render_inline(ProgressComponent, value: 0, total: 0)
    assert_includes html, "width:0%"
  end

  test "progress with color" do
    html = render_inline(ProgressComponent, color: "green")
    assert_includes html, "green"
  end

  test "progress indicating" do
    html = render_inline(ProgressComponent, indicating: true)
    assert_includes html, "indicating"
  end

  test "progress active" do
    html = render_inline(ProgressComponent, active: true)
    assert_includes html, "active"
  end

  test "progress with label slot" do
    html = render_inline(ProgressComponent) { |c|
      c.label { ctx.output_buffer << "65% done".html_safe }
    }

    assert_includes html, 'class="label"'
    assert_includes html, "65% done"
  end

  test "progress attached" do
    html = render_inline(ProgressComponent, attached: "top")
    assert_includes html, "top attached"
  end

  # --- LoaderComponent ---

  test "loader renders with default classes" do
    html = render_inline(LoaderComponent)
    assert_includes html, "ui loader"
  end

  test "loader active" do
    html = render_inline(LoaderComponent, active: true)
    assert_includes html, "active"
  end

  test "loader inline centered" do
    html = render_inline(LoaderComponent, inline: true, centered: true)
    assert_includes html, "inline"
    assert_includes html, "centered"
  end

  test "loader with text content adds text class" do
    html = render_inline(LoaderComponent) { ctx.output_buffer << "Loading..." }
    assert_includes html, "text"
    assert_includes html, "Loading..."
  end

  test "loader without content has no text class" do
    html = render_inline(LoaderComponent)
    # Should not contain "text" as a separate class
    assert_not_includes html, "text loader"
  end

  test "loader size" do
    html = render_inline(LoaderComponent, size: "large")
    assert_includes html, "large"
  end

  test "loader indeterminate" do
    html = render_inline(LoaderComponent, indeterminate: true)
    assert_includes html, "indeterminate"
  end

  # --- PlaceholderComponent ---

  test "placeholder renders with default classes" do
    html = render_inline(PlaceholderComponent)
    assert_includes html, "ui placeholder"
  end

  test "placeholder fluid" do
    html = render_inline(PlaceholderComponent, fluid: true)
    assert_includes html, "fluid"
  end

  test "placeholder with header" do
    html = render_inline(PlaceholderComponent) { |c|
      c.header { c.line }
    }
    assert_includes html, 'class="header"'
    assert_includes html, 'class="line"'
  end

  test "placeholder with image header" do
    html = render_inline(PlaceholderComponent) { |c|
      c.header(image: true) { c.line }
    }
    assert_includes html, 'class="image header"'
  end

  test "placeholder with paragraph" do
    html = render_inline(PlaceholderComponent) { |c|
      c.paragraph { c.line }
    }
    assert_includes html, 'class="paragraph"'
    assert_includes html, 'class="line"'
  end

  test "placeholder with image" do
    html = render_inline(PlaceholderComponent) { |c|
      c.image
    }
    assert_includes html, 'class="image"'
  end

  test "placeholder with square image" do
    html = render_inline(PlaceholderComponent) { |c|
      c.image :square
    }
    assert_includes html, 'class="square image"'
  end

  test "placeholder line with length" do
    html = render_inline(PlaceholderComponent) { |c|
      c.line :medium
    }
    assert_includes html, 'class="medium line"'
  end

  test "placeholder line with underscored length" do
    html = render_inline(PlaceholderComponent) { |c|
      c.line :very_short
    }
    assert_includes html, 'class="very short line"'
  end

  # --- ToastComponent ---

  test "toast renders a div" do
    html = render_inline(ToastComponent)
    assert_includes html, "<div"
  end

  test "toast has stimulus controller" do
    html = render_inline(ToastComponent)
    assert_includes html, "fui-toast"
  end

  test "toast with title" do
    html = render_inline(ToastComponent, title: "Success")
    assert_includes html, "Success"
  end

  test "toast with message" do
    html = render_inline(ToastComponent, message: "Item saved")
    assert_includes html, "Item saved"
  end

  test "toast type" do
    html = render_inline(ToastComponent, type: "error")
    assert_includes html, "error"
  end

  test "toast position" do
    html = render_inline(ToastComponent, position: "bottom right")
    assert_includes html, "bottom right"
  end

  # --- NagComponent ---

  test "nag renders with default classes" do
    html = render_inline(NagComponent)
    assert_includes html, "ui nag"
  end

  test "nag has stimulus controller" do
    html = render_inline(NagComponent)
    assert_includes html, "fui-nag"
  end

  test "nag has close icon" do
    html = render_inline(NagComponent)
    assert_includes html, "close icon"
  end

  test "nag fixed" do
    html = render_inline(NagComponent, fixed: true)
    assert_includes html, "fixed"
  end

  test "nag renders block content" do
    html = render_inline(NagComponent) { ctx.output_buffer << "We use cookies" }
    assert_includes html, "We use cookies"
  end
end
