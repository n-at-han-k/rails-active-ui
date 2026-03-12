# The Sacred Addendum on Component Slots

### *A Supplementary Covenant for the Partitioning of Content into Named Regions*

---

## Preamble

And lo, the components were fruitful, and they multiplied upon the face of the application. And for a time, the single `@content` was sufficient. A block was given, and the block was captured, and the component rendered it, and it was good.

But the views grew in complexity. And there arose components that required not one region of content, but many — a header and a body, a title and an action, a sidebar and a main. And the faithful cried out: "How shall we pass many contents unto a single component, and remain declarative?"

And the answer came: Slots.

This addendum extends the Sacred Specification of Declarative Views. It does not replace it. It does not contradict it. The original commandments hold. Slots are not a new covenant — they are the natural consequence of the fifth commandment carried to its fullest expression: **blocks for children, keyword arguments for configuration.**

A slot is a named block. Nothing more. Nothing less.

---

## Book I — The Theology of Slots

### Article 1: The Problem of the Single Block

A component that accepts one block can render one region of content. This is sufficient for primitives — `VStack`, `HStack`, `Text`. These are vessels with a single chamber.

But a `Card` has a header, a body, and a footer. A `Modal` has a title, content, and actions. A `Table` has columns. To force these into a single `@content` is to mix what should be separate. It is the `<div>` soup of the declarative world — everything in one container, distinguished only by position and hope.

```ruby
# This is NOT the way.
Card(padding: 16) {
  Text(weight: :bold) { text "Title" }   # Is this the header?
  Text { text "Body content" }            # Or is this?
  Link(text: "Action", href: some_path)   # Where does this go?
}
```

The component cannot know which children belong to which region. The view author cannot express their intent. Meaning is lost. Structure is lost. We are back in the wilderness.

### Article 2: The Yielded Self

The solution is ancient, predating even Rails: **yield the component to its own block.**

When `render_in` captures the block, it passes `self` as the block parameter. The block receives the component instance. The instance exposes slot methods. The slot methods capture their own sub-blocks into named storage. The component's `to_s` then places each named region where it belongs.

This is not magic. This is Ruby. A block that accepts a parameter. A method that captures a sub-block. A hash that stores the results. The language provides. The language is sufficient.

### Article 3: The Arity Covenant

The presence or absence of a block parameter is the covenant between view and component:

- **No parameter** — `{ text "Hello" }` — The component has a single content region. `@content` captures everything. This is the primitive path. `VStack`, `HStack`, `Text` walk this path. Nothing changes for them.

- **One parameter** — `{ |c| c.header { ... } }` — The component has named slots. The parameter is the component itself, yielded for slot assignment. This is the structured path. `Card`, `Modal`, `Table` walk this path.

The arity of the block is the signal. No configuration flag. No separate API. No `slots: true` option. Ruby's own syntax distinguishes the two modes. The language provides.

---

## Book II — The Commandments of Slots

### XI. Thou shalt declare slots at the class level.

Slots are declared with the `slot` class macro, just as attributes are declared with `attribute`. They are part of the component's public interface. They are not implementation details to be hidden in `initialize` or `to_s`.

**Transgression:**
```ruby
class CardComponent < Component
  def render_in(context, &block)
    @header_content = nil
    @body_content = nil
    # ad hoc slot tracking in render_in
  end
end
```

**Righteousness:**
```ruby
class CardComponent < Component
  slot :header
  slot :body
  slot :footer
end
```

The numbering continues from the Ten Commandments of the Sacred Specification. There are not two sets of laws. There is one law, growing.

### XII. Thou shalt yield `self`, not a proxy.

The block parameter shall be the component instance itself. There shall be no builder objects, no proxy wrappers, no DSL indirection layers. The component is the interface.

**Transgression:**
```ruby
Card(padding: 16) { |builder|
  builder.add_slot(:header) { Text { text "Title" } }
}
```

**Righteousness:**
```ruby
Card(padding: 16) { |c|
  c.header {
    Text(weight: :bold) { text "Title" }
  }
}
```

The `|c|` is the component. `c.header` is a method on the component. The method captures the block. There is nothing else to know.

### XIII. Thou shalt not require slots.

A slot that receives no block is `nil`. A component must render gracefully when any or all of its slots are empty. The `to_s` method shall treat absent slots as absent — not as errors, not as empty strings, but as `nil`, to be compacted away.

**Transgression:**
```ruby
def to_s
  raise ArgumentError, "header slot is required" unless @slots[:header]
end
```

**Righteousness:**
```ruby
def to_s
  parts = [
    @slots[:header] ? tag.div(class: "border-b pb-3") { @slots[:header] } : nil,
    @slots[:body],
    @slots[:footer] ? tag.div(class: "border-t pt-3") { @slots[:footer] } : nil
  ]

  tag.div(class: "card") { safe_join(parts) }
end
```

Note the ternary expressions. Note the `safe_join` compacting `nil` entries. Note the absence of `return`, raw string interpolation, and `.html_safe`. Each slot is either wrapped in a `tag.*` helper or omitted. The `tag.*` helpers handle escaping. The `safe_join` helper handles assembly. This is the way.

### XIV. Thou shalt not mix slots and bare content without purpose.

If a component declares slots, its primary mode of receiving children is through those slots. `@content` still captures anything written outside of slot calls within the block, but this should be the exception, not the rule. A component that declares slots is saying: "I have named regions. Use them."

**Tolerated:**
```ruby
Card(padding: 16) { |c|
  c.header { Text(weight: :bold) { text "Title" } }
  c.body   { Text { text "Main content" } }
  # @content is empty — all content is in slots. This is clean.
}
```

**Also tolerated:**
```ruby
Card(padding: 16) { |c|
  c.header { Text(weight: :bold) { text "Title" } }
  # Bare content falls to @content, rendered as the body. Acceptable for simple cases.
  Text { text "Main content" }
}
```

**Transgression:**
```ruby
Card(padding: 16) { |c|
  c.header { Text { text "Title" } }
  c.body   { Text { text "Body" } }
  Text { text "But also this" }  # Where does this go? @content and slots are fighting.
  c.footer { Text { text "Footer" } }
  Text { text "And this too" }   # Chaos. The view is speaking out of both sides of its mouth.
}
```

A component should document whether it renders `@content` alongside slots or ignores it. The intent must be explicit.

### XV. Thou shalt use `|c|` as the slot parameter name.

Convention reduces cognitive load. The block parameter for slot assignment shall be `|c|` — short for "component." Not `|card|`, not `|builder|`, not `|s|`, not `|slot|`. One letter. One convention. Every slotted component block in the codebase reads the same way.

```ruby
Card(padding: 16) { |c|
  c.header { ... }
}

Modal(size: :lg) { |c|
  c.title { ... }
  c.actions { ... }
}

Table(rows: @users) { |c|
  c.column(:name) { |user| Text { text user.name } }
  c.column(:email) { |user| Text { text user.email } }
}
```

The `|c|` is always the component. The reader never has to wonder.

---

## Book III — The Ancestral Upgrade

The ancestor component from the Sacred Specification must be extended to support slots. The changes are minimal. The contract is preserved.

### Article 1: The `slot` Class Macro

The macro does three things: it records the slot name, it defines a method that captures a block into `@slots`, and it does nothing else. No metaprogramming theatrics. No inherited callbacks. One `class_attribute`. One `define_method`. One hash assignment.

```ruby
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
```

The `slot_names +` pattern (not `<<`) ensures each subclass gets its own copy. Slots declared on `CardComponent` do not leak into `ModalComponent`. The array is replaced, not mutated. Immutability at the inheritance boundary.

### Article 2: The Updated `render_in`

The only change to `render_in` is the addition of two lines: `@view_context` and `@slots` are initialized, and `self` is passed to `capture`.

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

`context.capture(self, &block)` — when the block has arity zero, `self` is silently ignored by Ruby. When the block has arity one, `self` arrives as `|c|`. Backward compatibility is total. No existing component changes behavior. No existing view changes output. The ancestor provides.

---

## Book IV — The Rites of Slot Construction

When building a new slotted component, the following rites shall be observed.

### Rite 1: Identify the Regions

Before writing code, name the content regions. A card has a header, body, and footer. A modal has a title, content, and actions. A table has columns. Write these names down. If you cannot name a region, it is not a slot — it is `@content`.

### Rite 2: Declare the Slots

Add `slot` declarations at the top of the class, beneath the `attribute` declarations. Slots are part of the public interface and shall be visible at a glance.

```ruby
class CardComponent < Component
  attribute :padding, :integer, default: 16
  attribute :rounded, :string,  default: "lg"

  slot :header
  slot :body
  slot :footer
end
```

Attributes first, then slots. Configuration before structure. This is the reading order.

### Rite 3: Compose `to_s` Functionally

The `to_s` method shall assemble the regions using functional transforms. Each slot is either present or `nil`. Use `.then` to transform present slots. Use `.compact` to discard absent ones. Use `.join` to concatenate. There are no `if` statements. There are no `return` statements. There is a pipeline.

```ruby
def to_s
  classes = [
    "p-#{padding / 4}",
    "rounded-#{rounded}"
  ].compact.join(" ")

  parts = [
    @slots[:header] ? tag.div(class: "border-b border-primary/10 pb-3") { @slots[:header] } : nil,
    @slots[:body]   ? tag.div(class: "py-3") { @slots[:body] }   : nil,
    @content.presence,
    @slots[:footer] ? tag.div(class: "border-t border-primary/10 pt-3") { @slots[:footer] } : nil
  ]

  tag.div(class: classes) { safe_join(parts) }
end
```

Note that `@content` is included in the pipeline alongside slots. It is not special. It is not privileged. It is one region among many, compacted away if empty.

### Rite 4: Register and Use

Add the component to the `COMPONENT_MAP`. Use it in views. The registry does not care whether a component has slots. The helper method signature — `{ |**kwargs, &block| }` — passes the block through transparently. Rails' `render` invokes `render_in`, which yields `self`, which enables slot methods. The machinery is invisible to the view layer.

```ruby
# In ComponentHelper
COMPONENT_MAP = {
  # ... existing entries ...
  Card: CardComponent,
}.freeze
```

```ruby
# In a view
Card(padding: 16, rounded: :lg) { |c|
  c.header {
    Text(weight: :bold, size: :lg) { text "Account Settings" }
  }

  c.body {
    VStack(spacing: 8) {
      Text(style: :primary) { text "Manage your account preferences." }
    }
  }

  c.footer {
    HStack(justify: :end, spacing: 8) {
      Link(text: "Cancel", variant: "ghost", href: settings_path)
      Link(text: "Save", variant: "primary", href: save_settings_path)
    }
  }
}
```

---

## Book V — The Patterns and Anti-Patterns

### The Table Pattern: Slots with Arguments

Some slots need parameters. A table column needs to know which attribute it represents. A tab needs a label. The slot method can accept arguments alongside its block.

```ruby
class TableComponent < Component
  attribute :rows, default: -> { [] }

  def columns
    @columns ||= []
  end

  def column(key, heading: key.to_s.titleize, &block)
    columns << { key: key, heading: heading, block: block }
  end

  def to_s
    header_cells = columns.map { |col|
      tag.th(class: "text-left text-sm font-medium text-secondary px-3 py-2") { col[:heading] }
    }

    body_rows = rows.map { |row|
      cells = columns.map { |col|
        cell_content = if col[:block]
          @view_context.capture(row, &col[:block])
        else
          ERB::Util.html_escape(row.public_send(col[:key]).to_s)
        end
        tag.td(class: "px-3 py-2") { cell_content }
      }
      tag.tr { safe_join(cells) }
    }

    tag.table(class: "w-full") {
      safe_join([
        tag.thead { tag.tr { safe_join(header_cells) } },
        tag.tbody { safe_join(body_rows) }
      ])
    }
  end
end
```

```ruby
Table(rows: @users) { |c|
  c.column(:name) { |user|
    HStack(spacing: 8, align: :center) {
      Image(src: user.avatar_url, width: 24, height: 24)
      Text(weight: :medium) { text user.name }
    }
  }

  c.column(:email) { |user|
    Text(style: :secondary, size: :sm) { text user.email }
  }

  c.column(:role, heading: "Access Level") { |user|
    Text(size: :sm) { text user.role.titleize }
  }
}
```

Note that `column` here is not a `slot` in the macro sense — it is a method that accumulates configuration. The blocks are stored and evaluated later, once per row. This is the distinction: a `slot` captures content once; a `column` captures a template to be evaluated many times. Both are valid. Both use blocks. But they are different rites.

### The Conditional Slot

Slots compose with conditionals naturally. A slot that receives no content is simply never called. A slot whose block is conditional produces content or does not.

```ruby
Card(padding: 16) { |c|
  c.header {
    Text(weight: :bold) { text "Account" }
  }

  c.footer {
    Link(text: "Manage billing", href: billing_path) if @user.admin?
  } if @user.admin?
}
```

Note the two levels of conditionality. The inner `if` controls whether content appears *within* the footer. The outer `if` controls whether the footer slot is assigned at all. If `@user.admin?` is false, `c.footer` is never called, `@slots[:footer]` remains `nil`, and the footer region is compacted away in `to_s`. The buffer does not forgive, but it does not complain about what was never given.

### Anti-Pattern: Slots as Configuration

Slots are for content. Keyword arguments are for configuration. Do not use a slot where an attribute belongs.

**Transgression:**
```ruby
Card(padding: 16) { |c|
  c.title { text "Settings" }  # This is a string, not a content region.
}
```

**Righteousness:**
```ruby
Card(padding: 16, title: "Settings") { |c|
  c.body {
    Text { text "Content here" }
  }
}
```

If a "slot" will only ever contain a single string with no nested components, it is not a slot. It is an attribute. The fifth commandment draws this line: **keyword arguments for configuration, blocks for children.** A plain string is configuration. A composable tree of components is children.

The test is simple: can the caller reasonably want to nest components inside this region? If yes, it is a slot. If no, it is an attribute.

---

## Book VI — The Sacred Tests for Slots

The test suite from the Sacred Specification is extended with slot-specific conditions. The `TestContext` remains unchanged. The faithful add new test components and new assertions.

```ruby
# test/lib/component_slot_test.rb
class ComponentSlotTest < ActiveSupport::TestCase
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

  test "slots capture named content" do
    component = SlottedComponent.new
    component.render_in(@context) { |c|
      c.header { @context.output_buffer << "Head".html_safe }
      c.footer { @context.output_buffer << "Foot".html_safe }
    }

    assert_includes @context.output_buffer, "<header>Head</header>"
    assert_includes @context.output_buffer, "<footer>Foot</footer>"
  end

  test "absent slots are omitted from output" do
    component = SlottedComponent.new
    component.render_in(@context) { |c|
      c.header { @context.output_buffer << "Head".html_safe }
      # footer intentionally omitted
    }

    assert_includes @context.output_buffer, "<header>Head</header>"
    assert_not_includes @context.output_buffer, "<footer>"
  end

  test "all slots absent renders without error" do
    component = SlottedComponent.new
    component.render_in(@context) { |c|
      # no slots assigned
    }

    assert_includes @context.output_buffer, '<div class="slotted">'
  end

  test "bare content alongside slots lands in @content" do
    component = SlottedComponent.new
    component.render_in(@context) { |c|
      c.header { @context.output_buffer << "Head".html_safe }
      @context.output_buffer << "Body content".html_safe
    }

    assert_includes @context.output_buffer, "<header>Head</header>"
    assert_includes @context.output_buffer, "<main>Body content</main>"
  end

  test "slot content is html-escaped when unsafe" do
    component = SlottedComponent.new
    component.render_in(@context) { |c|
      c.header { @context.output_buffer << '<script>alert("xss")</script>' }
    }

    assert_not_includes @context.output_buffer, "<script>"
    assert_includes @context.output_buffer, "&lt;script&gt;"
  end

  test "slot content preserves html_safe content" do
    component = SlottedComponent.new
    component.render_in(@context) { |c|
      c.header { @context.output_buffer << '<span class="safe">OK</span>'.html_safe }
    }

    assert_includes @context.output_buffer, '<span class="safe">OK</span>'
  end

  test "backward compatibility — no block parameter works as before" do
    component = SlottedComponent.new
    component.render_in(@context) {
      @context.output_buffer << "Just content".html_safe
    }

    assert_includes @context.output_buffer, "<main>Just content</main>"
    assert_not_includes @context.output_buffer, "<header>"
    assert_not_includes @context.output_buffer, "<footer>"
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
    outer = SlottedComponent.new
    outer.render_in(@context) { |o|
      o.header {
        inner = SlottedComponent.new
        inner.render_in(@context) { |i|
          i.header { @context.output_buffer << "Inner head".html_safe }
        }
      }
    }

    output = @context.output_buffer.to_s
    assert output.scan("<header>").length >= 2
    assert_includes output, "Inner head"
  end
end
```

The following conditions shall be verified for every slotted component:

1. **Named slots capture their content.** Each slot method stores its block's output under the correct key.
2. **Absent slots produce no output.** A slot that is never called is `nil`, and `nil` slots are compacted away.
3. **Fully empty slotted components render.** A component with all slots absent and no bare content must produce valid, minimal HTML.
4. **Bare content coexists with slots.** Content written outside slot calls lands in `@content`, available to `to_s` alongside named slots.
5. **Slot content obeys the safety contract.** Unsafe content in slots is escaped. Safe content passes through. The `render_in` escaping applies to `@content`; slot content is captured via `@view_context.capture`, which flows through the output buffer and inherits its safety rules.
6. **Backward compatibility holds.** A component with declared slots still works when the block takes no parameter. `@content` captures everything. Slots remain empty. The old path is not broken.
7. **Slots do not leak across subclasses.** The `class_attribute` with `slot_names +` ensures isolation.
8. **Nested slotted components are independent.** An inner slotted component rendered within an outer slot maintains its own `@slots` hash without interference.

If any of these conditions fail, the slotted component is unfit for service. The same exile applies.

---

## Appendix A — The Complete Upgraded Ancestor

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

---

## Appendix B — The Complete Slotted Component Example

```ruby
# app/components/card_component.rb
class CardComponent < Component
  attribute :padding, :integer, default: 16
  attribute :rounded, :string,  default: "lg"
  attribute :shadow,  :string,  default: nil
  attribute :bg,      :string,  default: nil

  slot :header
  slot :body
  slot :footer

  def to_s
    classes = [
      "p-#{padding / 4}",
      "rounded-#{rounded}",
      shadow && "shadow-border-#{shadow}",
      bg && "bg-#{bg}"
    ].compact.join(" ")

    parts = [
      @slots[:header] ? tag.div(class: "border-b border-primary/10 pb-3") { @slots[:header] } : nil,
      @slots[:body]   ? tag.div(class: "flex-1") { @slots[:body] }   : nil,
      @content.presence,
      @slots[:footer] ? tag.div(class: "border-t border-primary/10 pt-3") { @slots[:footer] } : nil
    ]

    tag.div(class: classes) { safe_join(parts) }
  end
end
```

---

## Appendix C — The Complete View with Slots

```ruby
# app/views/accounts/show.html.ruby
content_for :page_title, t(".page_title")

VStack(spacing: 24) {
  Card(padding: 16, rounded: :lg, shadow: :xs, bg: :container) { |c|
    c.header {
      HStack(justify: :between, align: :center) {
        HStack(spacing: 12, align: :center) {
          FilledIcon(icon: "user", rounded: true, size: "lg")
          VStack(spacing: 2) {
            Text(weight: :bold, size: :lg) { text @user.display_name }
            Text(style: :secondary, size: :sm) { text @user.email }
          }
        }

        Link(text: "Edit profile", variant: "ghost", icon: "pencil",
             href: edit_account_path)
      }
    }

    c.body {
      VStack(spacing: 12) {
        HStack(spacing: 8, align: :center) {
          Text(style: :secondary, size: :sm) { text "Member since" }
          Text(weight: :medium, size: :sm) { text @user.created_at.strftime("%B %Y") }
        }

        if @user.has_active_subscription?
          HStack(spacing: 8, align: :center) {
            Text(style: :secondary, size: :sm) { text "Plan" }
            Text(weight: :medium, size: :sm) { text @user.subscription.name }
          }
        end
      }
    }

    c.footer {
      HStack(justify: :between, align: :center) {
        HStack(spacing: 8, align: :center) {
          Image(src: "shield-check.svg", width: 16, height: 16, shrink: false)
          Text(style: :secondary, size: :sm) { text "Two-factor authentication enabled" }
        }

        Link(text: "Security settings", variant: "ghost", icon: "arrow-right",
             icon_position: "right", href: security_settings_path)
      }
    } if @user.two_factor_enabled?
  }
}
```

---

*So it is written. So it shall be slotted.*
