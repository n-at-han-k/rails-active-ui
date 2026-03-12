# frozen_string_literal: true

require "test_helper"

class TextComponentsTest < ComponentTestCase
  # --- TextComponent ---

  test "text renders as span" do
    html = render_inline(TextComponent)
    assert_includes html, "<span"
  end

  test "text with style" do
    html = render_inline(TextComponent, style: "primary")
    assert_includes html, "text-primary"
  end

  test "text with spec-style size" do
    html = render_inline(TextComponent, size: "sm")
    assert_includes html, "font-size:0.875rem"
  end

  test "text with fui size" do
    html = render_inline(TextComponent, size: "large")
    assert_includes html, "ui"
    assert_includes html, "large"
    assert_includes html, "text"
  end

  test "text with weight" do
    html = render_inline(TextComponent, weight: "bold")
    assert_includes html, "font-weight:700"
  end

  test "text with color uses fui class" do
    html = render_inline(TextComponent, color: "red")
    assert_includes html, "red"
  end

  test "text renders block content" do
    html = render_inline(TextComponent) { ctx.output_buffer << "Hello" }
    assert_includes html, "Hello"
  end

  # --- HeaderComponent ---

  test "header renders as h2 by default" do
    html = render_inline(HeaderComponent)
    assert_includes html, "<h2"
    assert_includes html, "ui header"
  end

  test "header respects size attribute for tag" do
    html = render_inline(HeaderComponent, size: "h1")
    assert_includes html, "<h1"
  end

  test "header h3" do
    html = render_inline(HeaderComponent, size: "h3")
    assert_includes html, "<h3"
  end

  test "header sub" do
    html = render_inline(HeaderComponent, sub: true)
    assert_includes html, "sub"
  end

  test "header dividing" do
    html = render_inline(HeaderComponent, dividing: true)
    assert_includes html, "dividing"
  end

  test "header with icon" do
    html = render_inline(HeaderComponent, icon: "settings")
    assert_includes html, "settings icon"
  end

  test "header with color" do
    html = render_inline(HeaderComponent, color: "blue")
    assert_includes html, "blue"
  end

  test "header aligned" do
    html = render_inline(HeaderComponent, aligned: "center")
    assert_includes html, "center aligned"
  end

  # --- LabelComponent ---

  test "label renders with default classes" do
    html = render_inline(LabelComponent)
    assert_includes html, "ui label"
  end

  test "label with color" do
    html = render_inline(LabelComponent, color: "blue")
    assert_includes html, "blue"
  end

  test "label tag style" do
    html = render_inline(LabelComponent, tag_style: true)
    assert_includes html, "tag"
  end

  test "label ribbon" do
    html = render_inline(LabelComponent, ribbon: true)
    assert_includes html, "ribbon"
  end

  test "label with icon" do
    html = render_inline(LabelComponent, icon: "mail")
    assert_includes html, "mail icon"
  end

  test "label with detail" do
    html = render_inline(LabelComponent, detail: "23")
    assert_includes html, 'class="detail"'
    assert_includes html, "23"
  end

  test "label pointing" do
    html = render_inline(LabelComponent, pointing: "left")
    assert_includes html, "left pointing"
  end

  test "label corner" do
    html = render_inline(LabelComponent, corner: "right")
    assert_includes html, "right corner"
  end

  # --- ButtonComponent ---

  test "button renders as button by default" do
    html = render_inline(ButtonComponent)
    assert_includes html, "<button"
    assert_includes html, "ui button"
  end

  test "button with href renders as anchor" do
    html = render_inline(ButtonComponent, href: "/path")
    assert_includes html, "<a"
    assert_includes html, 'href="/path"'
  end

  test "button without href renders as button" do
    html = render_inline(ButtonComponent)
    assert_includes html, "<button"
    assert_not_includes html, "<a"
  end

  test "button with color" do
    html = render_inline(ButtonComponent, color: "green")
    assert_includes html, "green"
  end

  test "button variant" do
    html = render_inline(ButtonComponent, variant: "primary")
    assert_includes html, "primary"
  end

  test "button with icon" do
    html = render_inline(ButtonComponent, icon: "checkmark")
    assert_includes html, "checkmark icon"
  end

  test "button fluid" do
    html = render_inline(ButtonComponent, fluid: true)
    assert_includes html, "fluid"
  end

  test "button disabled" do
    html = render_inline(ButtonComponent, disabled: true)
    assert_includes html, "disabled"
  end

  test "button loading" do
    html = render_inline(ButtonComponent, loading: true)
    assert_includes html, "loading"
  end

  test "button type attribute" do
    html = render_inline(ButtonComponent, type: "submit")
    assert_includes html, 'type="submit"'
  end

  test "button renders block content" do
    html = render_inline(ButtonComponent) { ctx.output_buffer << "Click" }
    assert_includes html, "Click"
  end

  # --- IconComponent ---

  test "icon renders as i element" do
    html = render_inline(IconComponent, name: "home")
    assert_includes html, "<i"
    assert_includes html, "home"
    assert_includes html, "icon"
  end

  test "icon with size" do
    html = render_inline(IconComponent, name: "home", size: "large")
    assert_includes html, "large"
  end

  test "icon with color" do
    html = render_inline(IconComponent, name: "heart", color: "red")
    assert_includes html, "red"
  end

  test "icon loading" do
    html = render_inline(IconComponent, name: "spinner", loading: true)
    assert_includes html, "loading"
  end

  test "icon circular" do
    html = render_inline(IconComponent, name: "user", circular: true)
    assert_includes html, "circular"
  end

  test "icon flipped" do
    html = render_inline(IconComponent, name: "arrow", flipped: "horizontally")
    assert_includes html, "horizontally flipped"
  end

  # --- EmojiComponent ---

  test "emoji renders with data-emoji attribute" do
    html = render_inline(EmojiComponent, name: "smile")
    assert_includes html, "<em"
    assert_includes html, ":smile:"
  end

  test "emoji has small class" do
    html = render_inline(EmojiComponent, name: "thumbsup")
    assert_includes html, 'class="small"'
  end

  # --- FlagComponent ---

  test "flag renders as i element" do
    html = render_inline(FlagComponent, country: "us")
    assert_includes html, "<i"
    assert_includes html, "us flag"
  end

  test "flag with different country" do
    html = render_inline(FlagComponent, country: "fr")
    assert_includes html, "fr flag"
  end

  # --- ImageComponent ---

  test "image renders as img element" do
    html = render_inline(ImageComponent, src: "photo.jpg")
    assert_includes html, "<img"
    assert_includes html, 'src="photo.jpg"'
    assert_includes html, "ui image"
  end

  test "image with alt text" do
    html = render_inline(ImageComponent, src: "photo.jpg", alt: "A photo")
    assert_includes html, 'alt="A photo"'
  end

  test "image with dimensions" do
    html = render_inline(ImageComponent, src: "photo.jpg", width: 100, height: 50)
    assert_includes html, 'width="100"'
    assert_includes html, 'height="50"'
  end

  test "image avatar" do
    html = render_inline(ImageComponent, src: "a.jpg", avatar: true)
    assert_includes html, "avatar"
  end

  test "image circular" do
    html = render_inline(ImageComponent, src: "a.jpg", circular: true)
    assert_includes html, "circular"
  end

  test "image no-shrink adds flex-shrink style" do
    html = render_inline(ImageComponent, src: "a.jpg", shrink: false)
    assert_includes html, "flex-shrink:0"
  end

  test "image fluid" do
    html = render_inline(ImageComponent, src: "a.jpg", fluid: true)
    assert_includes html, "fluid"
  end

  # --- DividerComponent ---

  test "divider renders with default classes" do
    html = render_inline(DividerComponent)
    assert_includes html, "ui divider"
  end

  test "divider horizontal" do
    html = render_inline(DividerComponent, horizontal: true)
    assert_includes html, "horizontal"
  end

  test "divider vertical" do
    html = render_inline(DividerComponent, vertical: true)
    assert_includes html, "vertical"
  end

  test "divider hidden" do
    html = render_inline(DividerComponent, hidden: true)
    assert_includes html, "hidden"
  end

  test "divider section" do
    html = render_inline(DividerComponent, section: true)
    assert_includes html, "section"
  end

  test "divider with text content" do
    html = render_inline(DividerComponent, horizontal: true) { ctx.output_buffer << "OR" }
    assert_includes html, "OR"
  end
end
