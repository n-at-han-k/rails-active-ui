# frozen_string_literal: true

require "test_helper"

class UtilityComponentsTest < ComponentTestCase
  # --- EmbedComponent ---

  test "embed renders with default classes" do
    html = render_inline(EmbedComponent)
    assert_includes html, "ui embed"
  end

  test "embed has stimulus controller" do
    html = render_inline(EmbedComponent)
    assert_includes html, "fui-embed"
  end

  test "embed with youtube source" do
    html = render_inline(EmbedComponent, source: "youtube", embed_id: "dQw4w9WgXcQ")
    assert_includes html, "youtube"
    assert_includes html, "dQw4w9WgXcQ"
  end

  test "embed with url" do
    html = render_inline(EmbedComponent, url: "https://example.com/widget")
    assert_includes html, "https://example.com/widget"
  end

  test "embed with placeholder image" do
    html = render_inline(EmbedComponent, placeholder: "thumb.jpg")
    assert_includes html, 'src="thumb.jpg"'
    assert_includes html, 'class="placeholder"'
  end

  test "embed has play icon" do
    html = render_inline(EmbedComponent)
    assert_includes html, "video play icon"
  end

  # --- AdComponent ---

  test "ad renders with ui ad classes" do
    html = render_inline(AdComponent, unit: "leaderboard")
    assert_includes html, "ui leaderboard ad"
  end

  test "ad unit with underscore converts to space" do
    html = render_inline(AdComponent, unit: "medium_rectangle")
    assert_includes html, "medium rectangle"
  end

  test "ad test mode" do
    html = render_inline(AdComponent, test: "Placeholder")
    assert_includes html, "test"
    assert_includes html, "Placeholder"
  end

  # --- VisibilityComponent ---

  test "visibility renders a div" do
    html = render_inline(VisibilityComponent)
    assert_includes html, "<div"
  end

  test "visibility has stimulus controller" do
    html = render_inline(VisibilityComponent)
    assert_includes html, "fui-visibility"
  end

  test "visibility with type" do
    html = render_inline(VisibilityComponent, type: "image")
    assert_includes html, "image"
  end

  test "visibility with offset" do
    html = render_inline(VisibilityComponent, offset: 100)
    assert_includes html, "100"
  end

  test "visibility once" do
    html = render_inline(VisibilityComponent, once: true)
    assert_includes html, "true"
  end

  test "visibility renders block content" do
    html = render_inline(VisibilityComponent) { ctx.output_buffer << "content" }
    assert_includes html, "content"
  end

  # --- StickyComponent ---

  test "sticky renders with default classes" do
    html = render_inline(StickyComponent)
    assert_includes html, "ui sticky"
  end

  test "sticky has stimulus controller" do
    html = render_inline(StickyComponent)
    assert_includes html, "fui-sticky"
  end

  test "sticky with context" do
    html = render_inline(StickyComponent, context: "#sidebar")
    assert_includes html, "#sidebar"
  end

  test "sticky pushing" do
    html = render_inline(StickyComponent, pushing: true)
    assert_includes html, "true"
  end

  test "sticky with offset" do
    html = render_inline(StickyComponent, offset: 50)
    assert_includes html, "50"
  end

  test "sticky renders block content" do
    html = render_inline(StickyComponent) { ctx.output_buffer << "I stick" }
    assert_includes html, "I stick"
  end

  # --- StateComponent ---

  test "state renders a div" do
    html = render_inline(StateComponent)
    assert_includes html, "<div"
  end

  test "state has stimulus controller" do
    html = render_inline(StateComponent)
    assert_includes html, "fui-state"
  end

  test "state with text values" do
    html = render_inline(StateComponent, text_active: "Following", text_inactive: "Follow")
    assert_includes html, "Following"
    assert_includes html, "Follow"
  end

  test "state with class values" do
    html = render_inline(StateComponent, class_active: "green", class_inactive: "grey")
    assert_includes html, "green"
    assert_includes html, "grey"
  end

  test "state renders block content" do
    html = render_inline(StateComponent) { ctx.output_buffer << "button" }
    assert_includes html, "button"
  end

  # --- ApiComponent ---

  test "api renders a div" do
    html = render_inline(ApiComponent)
    assert_includes html, "<div"
  end

  test "api has stimulus controller" do
    html = render_inline(ApiComponent)
    assert_includes html, "fui-api"
  end

  test "api with url" do
    html = render_inline(ApiComponent, url: "/api/users")
    assert_includes html, "/api/users"
  end

  test "api method value" do
    html = render_inline(ApiComponent, method_val: "post")
    assert_includes html, "post"
  end

  test "api action value" do
    html = render_inline(ApiComponent, action_val: "click")
    assert_includes html, "click"
  end

  test "api renders block content" do
    html = render_inline(ApiComponent) { ctx.output_buffer << "trigger" }
    assert_includes html, "trigger"
  end

  # --- SiteComponent ---

  test "site renders a div" do
    html = render_inline(SiteComponent)
    assert_includes html, "<div"
  end

  test "site has stimulus controller" do
    html = render_inline(SiteComponent)
    assert_includes html, "fui-site"
  end

  test "site renders block content" do
    html = render_inline(SiteComponent) { ctx.output_buffer << "app" }
    assert_includes html, "app"
  end

  # --- ResetComponent ---

  test "reset renders an html comment" do
    html = render_inline(ResetComponent)
    assert_includes html, "fomantic-ui reset"
  end

  test "reset renders without error when no block" do
    html = render_inline(ResetComponent)
    assert html.present?
  end
end
