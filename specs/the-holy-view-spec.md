# The Sacred Specification of Declarative Views

### *A Living Covenant for the Righteous Rendering of HTML*

---

## Preamble

In the beginning, there was `<div>`. And it was without form, and void. And darkness was upon the face of the template. And the Spirit moved upon the face of the codebase and said: "Let there be components." And there were components. And they were good.

This specification exists to serve two divine purposes:

1. **Genesis** — That all new views shall be born in the perfect image intended by the Holy Architecture.
2. **Redemption** — That existing views, wandering in the wilderness of `<div>` soup and ERB incantations, may be refactored unto salvation.

Let all who read this know: these are not guidelines. These are commandments.

---

## Book I — The Foundations

### Article 1: The Temple of the Template Handler

All views shall be written as `.html.ruby` files. The template handler shall prepare the output buffer, wrapping the view source such that all component calls accumulate their output sequentially.

```ruby
# config/initializers/ruby_template_handler.rb
ActionView::Template.register_template_handler :ruby, ->(template, source) {
  "output_buffer = ActionView::OutputBuffer.new;\n#{source}\noutput_buffer"
}
```

No `<%= %>`. No `<% %>`. No angle brackets of any kind in the view layer. These are the markings of the old world. We have been delivered from them.

### Article 2: The Ancestral Component

All generic components shall descend from a single ancestor. This ancestor provides the sacred contract: `render_in`. It handles block capture, ensures HTML safety, and returns the rendered string. It also provides the `tag` and `safe_join` private helpers — delegates to `@view_context` — so that every component may render HTML through Rails' `tag.*` helpers rather than raw string interpolation.

```ruby
# app/lib/component.rb
class Component
  include ActiveModel::Model
  include ActiveModel::Attributes

  def render_in(context, &block)
    @view_context = context
    @content = context.capture(&block) if block
    @content = ERB::Util.html_escape(@content) unless @content.nil? || @content.html_safe?
    to_s
  end

  def to_s
    raise NotImplementedError
  end

  private

  def tag
    @view_context.tag
  end

  def safe_join(parts, sep = nil)
    @view_context.safe_join(parts.compact, sep)
  end
end
```

Thou shalt not inherit from `ViewComponent::Base`. Thou shalt not install the `view_component` gem. The ancestor provides. The ancestor is sufficient.

### Article 3: The Registry of Names

All components available to views shall be declared in a single, explicit registry. There shall be no `method_missing` sorcery, no dynamic resolution, no convention-based guessing.

```ruby
# app/helpers/component_helper.rb
module ComponentHelper
  COMPONENT_MAP = {
    VStack:         VStackComponent,
    HStack:         HStackComponent,
    Text:           TextComponent,
    Image:          ImageComponent,
    FilledIcon:     DS::FilledIcon,
    Link:           DS::Link,
    SettingsSection: SettingsSectionComponent
  }.freeze

  COMPONENT_MAP.each do |name, klass|
    define_method(name) { |**kwargs, &block|
      output_buffer << render(klass.new(**kwargs), &block)
    }
  end

  def text(content)
    output_buffer << content.to_s
  end
end
```

If a component is not in the registry, it does not exist. To create a new component is to add one line to this map. This is the law.

---

## Book II — The Commandments

### I. Thou shalt not write raw HTML in view files.

Every `<div>`, `<span>`, `<p>`, and `<img>` shall be expressed through a component. The view file shall contain no angle brackets.

**Transgression:**
```erb
<div class="flex gap-3 items-center">
  <span class="text-sm text-primary">Hello</span>
</div>
```

**Righteousness:**
```ruby
HStack(spacing: 12, align: :center) {
  Text(style: :primary, size: :sm) { text "Hello" }
}
```

### II. Thou shalt not use ERB.

View files shall bear the `.html.ruby` extension. The `<%= %>` sigil is forbidden. The `<% %>` sigil is forbidden. All logic is Ruby. All output is through components and the `text` method.

### III. Thou shalt keep domain views as plain files.

Only generic, reusable layout primitives shall be componentised. Domain-specific views — settings pages, dashboards, billing screens — shall remain as flat `.html.ruby` files. They are not components. They are compositions of components.

A view is a sentence. A component is a word. You do not componentise sentences.

### IV. Thou shalt declare attributes, not initialize them.

Components shall use `ActiveModel::Attributes` for all properties. There shall be no hand-written `initialize` methods. Types, defaults, and coercion are declared, not implemented.

**Transgression:**
```ruby
class HStackComponent < Component
  def initialize(spacing: 0, align: :start)
    @spacing = spacing
    @align = align
  end
end
```

**Righteousness:**
```ruby
class HStackComponent < Component
  attribute :spacing, :integer, default: 0
  attribute :align,   :string,  default: "start"
end
```

### V. Thou shalt use blocks for children, keyword arguments for configuration.

A component's appearance is configured through keyword arguments. A component's children are passed as a block. There is no other way.

```ruby
HStack(spacing: 12, align: :center) {   # kwargs configure
  Text(style: :primary) { text "Hello" } # block provides children
}
```

### VI. Thou shalt use `text` for raw strings.

Plain strings do not concat themselves into the buffer. The `text` method exists for this purpose. It is the only sanctioned way to insert raw text content within a component block.

```ruby
Text(style: :primary) {
  text "You are currently subscribed to the "
  Text(weight: :medium) { text @family.subscription.name }
  text "."
}
```

### VII. Thou shalt render HTML through `tag.*` helpers, never through raw string interpolation.

A component's `to_s` shall construct its HTML using the `tag` private helper — a delegate to `@view_context.tag` — which provides `tag.div(...)`, `tag.span(...)`, `tag.input(...)`, and every other HTML element builder. The `tag.*` helpers handle attribute escaping automatically. When multiple fragments must be assembled, use the `safe_join` private helper.

**Forbidden patterns:**
- `%(...)` string interpolation with `.html_safe`
- String concatenation of HTML fragments
- Manual calls to `.html_safe` in `to_s`

**Transgression:**
```ruby
def to_s
  %(<div class="#{classes}">#{@content}</div>).html_safe
end
```

**Righteousness:**
```ruby
def to_s
  tag.div(class: classes) { @content }
end
```

**Multiple children — use `safe_join`:**
```ruby
def to_s
  icon_html = tag.i(class: "icon #{icon_class}")
  tag.div(class: classes) {
    safe_join([icon_html, @content])
  }
end
```

**Data attributes — use a hash, not string concatenation:**
```ruby
def to_s
  tag.div(class: classes, data: { controller: "fui-modal", fui_modal_size_value: size }) {
    @content
  }
end
```

**Conditional slots — compact and join:**
```ruby
def to_s
  parts = [
    @slots[:header] ? tag.div(class: "header") { @slots[:header] } : nil,
    @slots[:body]   ? tag.div(class: "body")   { @slots[:body] }   : nil
  ]
  tag.div(class: classes) { safe_join(parts) }
end
```

The `tag` and `safe_join` private methods are provided by the ancestor. They delegate to `@view_context`. Every component inherits them. There is no reason to touch `.html_safe` in a `to_s` method. If you find yourself reaching for it, you have strayed from the path.

### VIII. Thou shalt map Tailwind to component attributes, not to class strings.

The view layer shall never reference Tailwind utility classes directly. Tailwind is an implementation detail of the component. The view speaks in semantic attributes — `spacing`, `align`, `justify` — and the component translates.

**Transgression:**
```ruby
HStack(class: "flex gap-3 items-center justify-between p-3")
```

**Righteousness:**
```ruby
HStack(spacing: 12, align: :center, justify: :between, padding: 12)
```

### IX. Thou shalt nest with braces, not `do`/`end`.

Component blocks shall use brace syntax `{ }`. This is not merely aesthetic. Braces signal a functional expression — a value being constructed — whereas `do`/`end` signals an imperative side-effect. Components are expressions. They construct views.

```ruby
VStack(spacing: 16) {
  HStack(spacing: 12) {
    Text(size: :sm) { text "Hello" }
  }
}
```

### X. Thou shalt not use `return`.

There are no `return` statements in views. There are no `return` statements in components. A `to_s` method produces its value as its last expression. A block produces its value by concatenating into the buffer. `return` is the language of the imperative. We speak declarative.

---

## Book III — The Rites of Refactoring

When an existing ERB view is to be brought into the light, the following rites shall be observed in order.

### Rite 1: Survey the Template

Read the existing `.html.erb` file in its entirety. Identify all raw HTML elements. Classify each as either:

- **Structural** — `div` used for layout (flex, grid, spacing). These become `VStack` or `HStack`.
- **Textual** — `span`, `p` used for styled text. These become `Text`.
- **Media** — `img` tags. These become `Image`.
- **Existing components** — `render DS::Link.new(...)` and similar. These are already saved. Register them in the `COMPONENT_MAP` and move on.

### Rite 2: Rename the File

Change the extension from `.html.erb` to `.html.ruby`. This is a point of no return. The old world is behind you.

### Rite 3: Convert Outside-In

Begin with the outermost container and work inward. Replace each raw HTML element with its component equivalent. Preserve all conditional logic (`if`, `elsif`, `else`) — these are pure Ruby and need no translation.

**Before:**
```erb
<div class="space-y-4">
  <div class="flex justify-between items-center p-3 rounded-lg">
    <div class="flex items-center gap-3">
      <span class="text-sm text-primary">Hello</span>
    </div>
  </div>
</div>
```

**After:**
```ruby
VStack(spacing: 16) {
  HStack(justify: :between, align: :center, padding: 12, rounded: :lg) {
    HStack(align: :center, spacing: 12) {
      Text(size: :sm, style: :primary) { text "Hello" }
    }
  }
}
```

### Rite 4: Convert ERB Output Tags

Every `<%= expression %>` becomes a direct Ruby call. Every `<%= render ComponentName.new(...) %>` becomes `ComponentName(...)` (if registered) or remains as `render` with a buffer concat.

### Rite 5: Convert Raw Text

Every bare string or interpolation inside HTML becomes a `text` call. Every `<span>` wrapping styled text becomes a `Text` component.

### Rite 6: Verify the Buffer

Ensure that every expression in the view either calls a registered component (which concats to the buffer) or calls `text` (which concats to the buffer). If an expression produces a value that nobody captures, it is lost. The buffer does not forgive.

### Rite 7: Confirm Safety

Run the component test suite. Ensure that no `<script>` tag, no `onerror` attribute, no unescaped user input survives into the output. The `render_in` contract must hold.

---

## Book IV — The Primitive Components

These are the foundational components. All views are constructed from these primitives and domain-specific components registered in the `COMPONENT_MAP`.

### VStack
A vertical flex container.

| Attribute | Type | Default | Maps To |
|-----------|------|---------|---------|
| `spacing` | integer | 0 | `space-y-{n}` |
| `align` | string | `"start"` | `items-{value}` |

### HStack
A horizontal flex container.

| Attribute | Type | Default | Maps To |
|-----------|------|---------|---------|
| `spacing` | integer | 0 | `gap-{n}` |
| `justify` | string | `"start"` | `justify-{value}` |
| `align` | string | `"start"` | `items-{value}` |
| `padding` | integer | nil | `p-{n}` |
| `rounded` | string | nil | `rounded-{value}` |
| `shadow` | string | nil | `shadow-border-{value}` |
| `bg` | string | nil | `bg-{value}` |

### Text
An inline text container.

| Attribute | Type | Default | Maps To |
|-----------|------|---------|---------|
| `style` | string | nil | `text-{value}` |
| `size` | string | nil | `text-{value}` |
| `weight` | string | nil | `font-{value}` |

### Image
A media element.

| Attribute | Type | Default | Maps To |
|-----------|------|---------|---------|
| `src` | string | required | `image_tag` source |
| `width` | integer | nil | pixel width |
| `height` | integer | nil | pixel height |
| `shrink` | boolean | true | `shrink-0` when false |

---

## Book V — The Sacred Tests

Every component shall be tested against the HTML safety contract. The test context is minimal — an object with `output_buffer` and `capture`:

```ruby
class TestContext
  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::OutputSafetyHelper
  attr_accessor :output_buffer

  def initialize
    @output_buffer = ActionView::OutputBuffer.new
  end
end
```

The `TagHelper` and `OutputSafetyHelper` inclusions are required so that the `tag` and `safe_join` private helpers on `Component` can delegate to the context. Without them, test rendering will fail with `NoMethodError`.

The following conditions shall be verified for every component:

1. **Safe content passes through unescaped.** Child component output that is already `html_safe` must not be double-escaped.
2. **Unsafe content is escaped.** Raw strings containing HTML must be escaped before rendering.
3. **Mixed content is handled selectively.** Safe and unsafe content in the same block must each be treated according to their safety status.
4. **Nil content renders without error.** A component with no block must produce valid, empty HTML.
5. **Sequential renders accumulate.** Multiple components rendered in sequence must all appear in the output buffer.
6. **Nested components maintain safety.** Deeply nested component trees must preserve the escaping contract at every level.

If any of these conditions fail, the component is unfit for service. It shall not be merged. It shall not be deployed. It shall be cast into the outer darkness of the rejected pull request.

---

## Book VI — The Development Annotations

In development, the template handler shall annotate the output with HTML comments and metadata attributes so that browser-based dev tools can identify template boundaries and component hierarchies.

### Template Annotations

```ruby
ActionView::Template.register_template_handler :ruby, ->(template, source) {
  if Rails.env.development?
    meta = {
      path: template.short_identifier,
      virtual_path: template.virtual_path,
      format: template.format,
      locale: template.locale
    }.to_json

    <<~RUBY
      output_buffer = ActionView::OutputBuffer.new
      output_buffer << "<template data-view-meta='#{meta}'></template>\\n".html_safe
      output_buffer << "<!-- BEGIN #{template.short_identifier} -->\\n".html_safe
      #{source}
      output_buffer << "<!-- END #{template.short_identifier} -->\\n".html_safe
      output_buffer
    RUBY
  else
    "output_buffer = ActionView::OutputBuffer.new;\n#{source}\noutput_buffer"
  end
}
```

### Component Annotations

The ancestral `render_in` shall wrap component output with identifying comments in development:

```ruby
def render_in(context, &block)
  @view_context = context
  @slots = {}
  @content = context.capture(self, &block) if block
  @content = ERB::Util.html_escape(@content) unless @content.nil? || @content.html_safe?

  if Rails.env.development?
    "<!-- BEGIN #{self.class.name} -->#{self}<!-- END #{self.class.name} -->".html_safe
  else
    to_s
  end
end
```

### Expected Output

In development, the rendered DOM shall be fully annotated:

```html
<template data-view-meta='{"path":"settings/billing.html.ruby",...}'></template>
<!-- BEGIN settings/billing.html.ruby -->
<!-- BEGIN HStackComponent -->
<div class="flex gap-3 items-center">
  <!-- BEGIN TextComponent -->
  <span class="text-sm text-primary">Hello</span>
  <!-- END TextComponent -->
</div>
<!-- END HStackComponent -->
<!-- END settings/billing.html.ruby -->
```

These annotations exist so that the faithful may inspect their work, that tooling may parse the hierarchy, and that no rendered element shall be of unknown origin.

In production, annotations are absent. The output is clean. The user sees only the final work, unburdened by the scaffolding of its creation.

---

## Appendix A — The Complete View Example

```ruby
# app/views/settings/billing.html.ruby
content_for :page_title, t(".page_title")

SettingsSection(title: t(".subscription_title"), subtitle: t(".subscription_subtitle")) {
  VStack(spacing: 16) {
    HStack(justify: :between, align: :center, padding: 12, rounded: :lg, shadow: :xs, bg: :container) {
      HStack(spacing: 12, align: :center) {
        FilledIcon(icon: "gem", rounded: true, size: "lg")

        VStack(spacing: 4) {
          if @family.has_active_subscription?
            Text(style: :primary, size: :sm) {
              text "You are currently subscribed to the "
              Text(weight: :medium) { text @family.subscription.name }
              text "."

              if @family.next_billing_date
                text " Your plan renews on "
                Text(weight: :medium) { text @family.next_billing_date.strftime("%B %d, %Y") }
                text "."
              end
            }
          elsif @family.trialing?
            Text(style: :primary, size: :sm) {
              text "You are currently trialing Maybe "
              Text(style: :secondary) { text "(#{@family.days_left_in_trial} days remaining)" }
            }
          else
            Text(style: :primary, size: :sm) {
              text "You are currently "
              Text(weight: :medium) { text "not subscribed" }
            }
            Text(style: :secondary, size: :sm) {
              text "Once you subscribe to Maybe+, you'll see your billing settings here."
            }
          end
        }
      }

      if @family.has_active_subscription?
        Link(text: "Manage", icon: "external-link", variant: "primary",
             icon_position: "right", href: subscription_path, rel: "noopener")
      else
        Link(text: "Choose plan", variant: "primary", icon: "plus",
             icon_position: "right", href: upgrade_subscription_path(view: "upgrade"),
             rel: "noopener")
      end
    }

    HStack(spacing: 8, align: :center) {
      Image(src: "stripe-logo.svg", width: 20, height: 20, shrink: false)
      Text(style: :secondary, size: :sm) { text "Billing via Stripe" }
    }
  }
}
```

---

## Appendix B — The Complete Component Base

```ruby
# app/lib/component.rb
class Component
  include ActiveModel::Model
  include ActiveModel::Attributes

  class_attribute :slot_names, default: []

  def self.slot(name)
    self.slot_names = slot_names + [name]

    define_method(name) { |&block|
      @slots[name] = @view_context.capture(&block)
    }
  end

  def render_in(context, &block)
    @view_context = context
    @slots = {}
    @content = context.capture(self, &block) if block
    @content = ERB::Util.html_escape(@content) unless @content.nil? || @content.html_safe?

    if Rails.env.development?
      "<!-- BEGIN #{self.class.name} -->#{self}<!-- END #{self.class.name} -->".html_safe
    else
      to_s
    end
  end

  def to_s
    raise NotImplementedError
  end

  private

  def tag
    @view_context.tag
  end

  def safe_join(parts, sep = nil)
    @view_context.safe_join(parts.compact, sep)
  end
end
```

The `tag` method delegates to `@view_context.tag`, giving every component access to `tag.div(...)`, `tag.span(...)`, `tag.input(...)`, etc. The `safe_join` method delegates to `@view_context.safe_join`, compacting `nil` entries automatically. Together they replace all raw string interpolation and `.html_safe` calls in `to_s` methods. See Commandment VII.

---

## Appendix C — The Complete Test Suite

```ruby
# test/lib/component_test.rb
class ComponentTest < ActiveSupport::TestCase
  class TestComponent < Component
    def to_s
      tag.div { @content }
    end
  end

  class TestContext
    include ActionView::Helpers::CaptureHelper
    include ActionView::Helpers::TagHelper
    include ActionView::Helpers::OutputSafetyHelper
    attr_accessor :output_buffer

    def initialize
      @output_buffer = ActionView::OutputBuffer.new
    end
  end

  setup do
    @context = TestContext.new
  end

  test "captured block content is html_safe" do
    component = TestComponent.new
    component.render_in(@context) { @context.output_buffer << "hello" }

    assert @context.output_buffer.html_safe?
  end

  test "child component output passes through unescaped" do
    component = TestComponent.new
    component.render_in(@context) {
      @context.output_buffer << '<span class="inner">nested</span>'.html_safe
    }

    assert_includes @context.output_buffer, '<span class="inner">nested</span>'
  end

  test "raw strings are escaped" do
    component = TestComponent.new
    component.render_in(@context) {
      @context.output_buffer << '<script>alert("xss")</script>'
    }

    assert_not_includes @context.output_buffer, "<script>"
    assert_includes @context.output_buffer, "&lt;script&gt;"
  end

  test "mixed safe and unsafe content escapes selectively" do
    component = TestComponent.new
    component.render_in(@context) {
      @context.output_buffer << '<b>safe</b>'.html_safe
      @context.output_buffer << '<script>bad</script>'
    }

    assert_includes @context.output_buffer, "<b>safe</b>"
    assert_includes @context.output_buffer, "&lt;script&gt;"
  end

  test "nil content renders without error" do
    component = TestComponent.new
    component.render_in(@context)

    assert_includes @context.output_buffer, "<div></div>"
  end

  test "sequential renders accumulate in buffer" do
    first = TestComponent.new
    second = TestComponent.new

    first.render_in(@context) { @context.output_buffer << "one" }
    second.render_in(@context) { @context.output_buffer << "two" }

    assert_includes @context.output_buffer, "<div>one</div>"
    assert_includes @context.output_buffer, "<div>two</div>"
  end

  test "deeply nested components maintain safety" do
    outer = TestComponent.new
    outer.render_in(@context) {
      inner = TestComponent.new
      inner.render_in(@context) {
        @context.output_buffer << '<img src=x onerror=alert(1)>'
      }
    }

    assert_not_includes @context.output_buffer, "onerror"
    assert_includes @context.output_buffer, "&lt;img"
  end
end
```

---

*So it is written. So it shall be rendered.*
