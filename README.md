# Rails Active UI

A Rails 8.1+ engine providing declarative, pure-Ruby view components built on `ActiveModel::Attributes`. Write views in plain Ruby — no ERB, no angle brackets — using a component DSL powered by [Fomantic-UI](https://fomantic-ui.com/) (v2.9.4).

## Installation

Add to your Gemfile:

```ruby
gem "rails-active-ui"
```

Then:

```sh
bundle install
```

The engine auto-configures itself: components, helpers, assets, importmaps, and the `.html.ruby` template handler are all loaded automatically.

## Quick Start

Create a view file with the `.html.ruby` extension (e.g. `app/views/pages/home.html.ruby`):

```ruby
Container {
  Header(size: :h1, color: "teal") { text "Welcome" }

  Segment {
    text "Hello from Rails Active UI!"
    Button(color: "green", size: "large") { text "Get Started" }
  }
}
```

That's it — no ERB tags, no HTML. Everything is a component call or a `text()` helper.

## Pure Ruby Templates

Rails Active UI registers `.html.ruby` as a template format. View files are pure Ruby: all output flows through component calls and the `text()` helper into an output buffer.

```ruby
# app/views/layouts/application.html.ruby

DocType()
tag.html {
  tag.head {
    StylesheetLink("application")
    CsrfMetaTags()
    CspMetaTag()
    JavascriptImportmap()
  }
  tag.body {
    ContentFor(:content)
  }
}
```

## Components

Components are called using **PascalCase method names** with keyword arguments and a block for content:

```ruby
ComponentName(attribute: "value", another: true) { text "child content" }
```

### Available Components

**Layout Primitives** — `VStack`, `HStack`, `Column`, `Row`, `Pusher`, `Overlay`, `LinkTo`, `SubHeader`

**Globals** — `Reset`, `Site`, `Wrapper`, `Template`, `BackButton`

**Elements** — `Button`, `ButtonTo`, `Container`, `Divider`, `Emoji`, `Flag`, `Header`, `Icon`, `Image`, `Input`, `Label`, `List`, `Loader`, `Placeholder`, `Rail`, `Reveal`, `Segment`, `SegmentGroup`, `Step`, `StepGroup`, `Text`, `Paragraph`

**Collections** — `Breadcrumb`, `Form`, `Grid`, `Menu`, `MenuItem`, `SubMenu`, `Message`, `Table`, `TableRow`, `TableCell`

**Views** — `Ad`, `ItemGroup`, `Card`, `Comment`, `Feed`, `Item`, `Statistic`

**Modules** — `Accordion`, `Calendar`, `Checkbox`, `Dimmer`, `Dropdown`, `Embed`, `Flyout`, `Modal`, `Nag`, `Popup`, `Progress`, `Slider`, `Rating`, `Search`, `Shape`, `Sidebar`, `Sticky`, `Tab`, `Toast`, `Transition`

**Behaviors** — `Api`, `State`, `Visibility`

**Blocks** — `ResourceListBlock`

## Component Attributes

Components use `ActiveModel::Attributes` for declarative, type-safe props:

```ruby
class ButtonComponent < Component
  attribute :color,    :string,  default: nil
  attribute :variant,  :string,  default: nil
  attribute :icon,     :string,  default: nil
  attribute :fluid,    :boolean, default: false
  attribute :disabled, :boolean, default: false
end
```

Usage:

```ruby
Button(color: "green", fluid: true, icon: "checkmark") { text "Approve" }
Button(variant: :primary, size: :large, disabled: true) { text "Submit" }
Button(href: "/dashboard", variant: :primary) { text "Go" }  # renders as <a>
```

### HTML Pass-Through Options

Every component accepts these HTML options, which are passed directly to the rendered element:

```ruby
Button(color: "red", id: "save-btn", class: "custom", data: { turbo: false }, style: "margin: 1rem;")
Segment(role: "alert", aria: { live: "polite" }, tabindex: 0)
```

Supported pass-through keys: `id`, `class`, `data`, `style`, `role`, `tabindex`, `title`, `aria`, `target`, `rel`.

Classes and data hashes are **merged** with the component's own classes/data rather than overwriting them.

### Shared Concerns

Several concerns add reusable attributes across components:

| Concern | Attribute | Values |
|---------|-----------|--------|
| `Sizeable` | `size` | `mini`, `tiny`, `small`, `medium`, `large`, `big`, `huge`, `massive` |
| `Attachable` | `attached` | `true`, `"top"`, `"bottom"` |
| `Orientable` | `orientation` | `"vertical"`, `"horizontal"` |
| `Positionable` | `position` | positioning values |
| `Alignable` | `aligned` | `"left"`, `"center"`, `"right"` |

## Slots

Components with multiple content regions use **named slots** via the yielded-self pattern. The component yields itself, and you call slot methods on it:

```ruby
Card(fluid: true) { |c|
  c.image { Image(src: "photo.jpg") }
  c.header { text "Project Alpha" }
  c.meta { text "Started 3 days ago" }
  c.description { text "A detailed description of the project." }
  c.extra { Button(color: "green") { text "Join" } }
}
```

Other components with slots include `Table`, `Progress`, `Statistic`, and more:

```ruby
Table(celled: true, striped: true) { |c|
  c.header {
    TableRow {
      TableCell(heading: true) { text "Name" }
      TableCell(heading: true) { text "Status" }
    }
  }
  TableRow {
    TableCell { text "Widget" }
    TableCell { text "Active" }
  }
}

Statistic(color: "teal") { |c|
  c.value { text "5,550" }
  c.label { text "Downloads" }
}

Progress(value: 75, total: 100, color: "olive", size: "tiny") { |c|
  c.bar {}
  c.label { text "75% Complete" }
}
```

## View Helpers & method_missing

All component methods are provided by the `ComponentHelper` module, which is auto-included in all views. When you call a PascalCase method, resolution follows three tiers:

### 1. Registered Components (COMPONENT_MAP)

If the method name matches a registered component, it renders that component:

```ruby
Button(color: "blue") { text "Click" }   # → renders ButtonComponent
Modal(size: "small") { text "Content" }   # → renders ModalComponent
```

### 2. Form Builder Delegation (method_missing)

If a PascalCase method is **not** in the registry and a form builder is active (inside a `Form()` block with `model:` or `url:`), the method name is converted from PascalCase to snake_case and forwarded to the Rails form builder:

```ruby
Form(model: @user) {
  # These PascalCase calls become form builder methods:
  TextField(:name)           # → f.text_field(:name)
  EmailField(:email)         # → f.email_field(:email)
  PasswordField(:password)   # → f.password_field(:password)
  TextArea(:bio)             # → f.text_area(:bio)
  Select(:role, ["Admin", "User"])  # → f.select(:role, ...)
  CheckBox(:terms)           # → f.check_box(:terms)
  HiddenField(:token)        # → f.hidden_field(:token)
  CollectionSelect(:category_id, Category.all, :id, :name)  # → f.collection_select(...)
  Submit("Save")             # → f.submit("Save")
}
```

Any method the Rails form builder responds to can be called this way.

### 3. HTML Tag Fallback

If the PascalCase method doesn't match a component or a form builder method, it creates an HTML element:

```ruby
MyWidget(class: "fancy") { text "hello" }  # → <my-widget class="fancy">hello</my-widget>
```

## Forms

The `Form()` component integrates with Rails' `form_with` and enables the PascalCase form builder delegation described above.

### Model-Backed Forms

When you pass `model:` or `url:`, the form uses `form_with` and exposes the form builder through `method_missing`:

```ruby
Form(model: @user) {
  Segment {
    Header(size: :h3) { text "Edit Profile" }

    Input(icon: "user", icon_position: "left", placeholder: "Display name")
    TextField(:name, placeholder: "Full Name")
    EmailField(:email, placeholder: "Email")
    TextArea(:bio, rows: 4)

    Dropdown { }  # registered component, rendered normally

    Button(color: "teal", fluid: true) { text "Update" }
  }
}
```

You can pass any option that `form_with` accepts:

```ruby
Form(model: @user, url: users_path, method: :patch, local: true) {
  TextField(:name)
  Submit("Save Changes")
}
```

### Plain Forms (No Model)

Without `model:` or `url:`, `Form()` renders a plain `<form>` tag with Fomantic-UI classes. No form builder is available, so `method_missing` delegation does not apply:

```ruby
Form(size: "large") {
  Segment(stacked: true) {
    Input(icon: "user", icon_position: "left", placeholder: "Email", name: "email")
    Input(icon: "lock", icon_position: "left", placeholder: "Password", name: "password", input_type: "password")
    Button(color: "teal", fluid: true, size: "large") { text "Login" }
  }
}
```

### Mixing Components and Form Fields

Inside a model-backed form, you can freely mix registered components (like `Button`, `Segment`, `Header`) with form builder methods (like `TextField`, `Select`). The registered components always take priority:

```ruby
Form(model: @post) {
  Segment {
    Header(size: :h4) { text "New Post" }      # registered component
    TextField(:title, placeholder: "Title")     # → f.text_field(:title, ...)
    TextArea(:body)                             # → f.text_area(:body)
    Divider()                                   # registered component
    Select(:category, ["Tech", "Science"])      # → f.select(:category, ...)
    Button(color: "blue") { text "Publish" }    # registered component
  }
}
```

## Utility Helpers

These helpers are available in all `.html.ruby` views:

| Helper | Description |
|--------|-------------|
| `text("content")` | Output a plain string to the buffer |
| `Partial("path/to/partial")` | Render a partial |
| `Style("body { color: red; }")` | Output a `<style>` block |
| `DocType()` | Output `<!DOCTYPE html>` |
| `StylesheetLink("application")` | Wraps `stylesheet_link_tag` |
| `JavascriptImportmap()` | Wraps `javascript_importmap_tags` |
| `CsrfMetaTags()` | Wraps `csrf_meta_tags` |
| `CspMetaTag()` | Wraps `csp_meta_tag` |
| `ContentFor(:name) { ... }` | Wraps `content_for` |

## JavaScript & Stimulus

Rails Active UI bundles Stimulus controllers for interactive Fomantic-UI components (dropdowns, modals, forms, calendars, etc.). These are wired up automatically via data attributes.

To load the required JavaScript (jQuery + Fomantic-UI), add to your layout:

```ruby
fui_javascript_tags
```

This loads jQuery and all Fomantic-UI component scripts in the correct dependency order.

## Creating Custom Components

Subclass `Component`, declare attributes, and implement `to_s`:

```ruby
# app/components/alert_component.rb

class AlertComponent < Component
  include Sizeable

  attribute :color,   :string, default: "blue"
  attribute :header,  :string, default: nil
  attribute :dismissible, :boolean, default: false

  def to_s
    classes = class_names("ui", color, size, "message")

    header_el = header ? tag.div(class: "header") { header } : nil
    content = safe_join([header_el, @content])

    tag.div(**merge_html_options(class: classes)) { content }
  end
end
```

Then register it in `ComponentHelper::COMPONENT_MAP`:

```ruby
Alert: "AlertComponent"
```

Now use it in views:

```ruby
Alert(color: "green", header: "Success!") { text "Your changes were saved." }
```

## Example: Login Page

```ruby
# app/views/sessions/new.html.ruby

Grid(columns: 1, centered: true) {
  Column {
    Header(size: :h2, color: "teal", aligned: "center") {
      Image(src: "/logo.png", size: "mini")
      text " Log in to your account"
    }

    Form(url: sessions_path, size: "large") {
      Segment(stacked: true) {
        Input(icon: "user", icon_position: "left", placeholder: "Email", name: "email")
        Input(icon: "lock", icon_position: "left", placeholder: "Password", name: "password", input_type: "password")
        Button(color: "teal", fluid: true, size: "large") { text "Login" }
      }
    }

    Message {
      text "New to us? "
      LinkTo(href: sign_up_path) { text "Sign Up" }
    }
  }
}
```

## Example: Dashboard with Cards and Tables

```ruby
# app/views/dashboard/show.html.ruby

Grid(stackable: true, padded: "true") {
  Column(computer: 4, tablet: 8, mobile: 16) {
    Card(fluid: true) { |c|
      c.header { Header(size: "h3", color: "green") { text "57.6%" } }
      c.meta { text "Conversion Rate" }
      c.description { text "Up 12% from last month" }
      c.extra { Button(color: "green") { text "Details" } }
    }
  }

  Column(computer: 12, tablet: 16, mobile: 16) {
    Table(celled: true, striped: true) { |c|
      c.header {
        TableRow {
          TableCell(heading: true) { text "Name" }
          TableCell(heading: true) { text "Status" }
          TableCell(heading: true) { text "Updated" }
        }
      }
      TableRow {
        TableCell { Icon(name: "file outline"); text " README.md" }
        TableCell { text "Published" }
        TableCell(aligned: "right") { text "2 hours ago" }
      }
    }
  }
}
```

## Requirements

- Ruby >= 3.2
- Rails ~> 8.1

## License

MIT
