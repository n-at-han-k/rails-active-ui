# rails-active-ui

A Fomantic-UI component system for Rails. Views use `.html.ruby` files with PascalCase component calls built on `ActiveModel::Attributes`.

## Setup

Add to your Gemfile:

```ruby
gem "rails-active-ui", path: "engines/rails-active-ui"
```

Requires Ruby >= 3.2 and Rails ~> 8.1.

### Engine initializers

The gem's engine (`Ui::Engine`) registers the following automatically:

**Autoload paths** -- `app/lib` and `app/blocks` are added to the autoload paths so `Component` and block classes are available everywhere.

**Asset paths** -- `formantic-ui/` (Fomantic-UI CSS/JS distribution) and `app/javascript/` (Stimulus controllers) are added to Propshaft's asset paths. Reference them in your layout:

```ruby
# CSS
StylesheetLink("stylesheets.css")  # Fomantic-UI stylesheet

# jQuery + Fomantic-UI component JS (must come before importmap)
text fui_javascript_tags

# Importmap (loads Stimulus controllers)
JavascriptImportmap()
```

**Importmap** -- the gem's `config/importmap.rb` is prepended to the app's importmap. It pins:
- `ui` -- the main entry point (`ui/index.js`)
- `ui/controllers/*` -- all Fomantic-UI Stimulus bridge controllers
- `emoji-picker-element` -- emoji picker from CDN

**Helpers** -- `ComponentHelper` and `FuiHelper` are included into `ActionView::Base` automatically.

### Stimulus controllers

Register the Fomantic-UI Stimulus controllers in your app's `app/javascript/controllers/index.js`:

```javascript
import { Application } from "@hotwired/stimulus"
import { registerFuiControllers } from "ui"

const application = Application.start()
registerFuiControllers(application)
```

These are thin jQuery bridge controllers that initialize Fomantic-UI widgets in `connect()` and tear them down in `disconnect()`, making them Turbo-compatible. There are 28 Fomantic bridge controllers covering accordion, api, calendar, checkbox, datatable, dimmer, dropdown, embed, emoji-picker, flyout, form, item-list, modal, nag, popup, progress, rating, search, shape, sidebar, site, slider, state, sticky, tab, toast, transition, and visibility.

### Rails engine usage

If you're using rails-active-ui inside a Rails engine, your engine needs to register the gem's assets manually since engines don't inherit the host app's asset paths:

```ruby
# lib/my_engine/engine.rb
class Engine < ::Rails::Engine
  initializer "my_engine.assets" do |app|
    ui_gem = Gem::Specification.find_by_name("rails-active-ui")
    app.config.assets.paths << File.join(ui_gem.gem_dir, "app/assets")
  end
end
```

## View DSL

Views use `.html.ruby` files with a pure-Ruby DSL. Every PascalCase call renders a component:

```ruby
Header(size: :h2) { "Hello World" }
Segment(inverted: true) {
  Paragraph { "Some content here" }
}
```

### Text content

There are two ways to output text inside a block:

- **Block return value** -- when the block contains only a string, just return it directly:
  ```ruby
  Header { "Page Title" }
  Button(color: "green") { "Save" }
  ```

- **`Text` component** -- when you need to mix text with other components in the same block, use `Text { "..." }` for each piece of text and `NbSpace()` for whitespace between components:
  ```ruby
  Button(color: "blue") {
    Icon(name: "edit")
    NbSpace()
    Text { "Add Reply" }
  }
  ```

Prefer `{ "string" }` over `{ Text { "string" } }` when the block contains only text.

Never use lowercase `text` to emit inline content alongside components -- use `Text { "..." }` instead. Never embed leading/trailing spaces into text strings -- use `NbSpace()`. Every HTML element must be rendered through a component call.

### Inline elements

Common HTML elements that appear inside components:

| HTML | Ruby DSL |
|------|----------|
| `<a>Text</a>` | `LinkTo { "Text" }` |
| `<a class="user">Name</a>` | `LinkTo(class: "user") { "Name" }` |
| `<a href="/path">Link</a>` | `LinkTo(href: "/path") { "Link" }` |
| `<span class="ui red text">` | `Text(color: "red") { "..." }` |
| `<div>` (generic) | `Wrapper(class: "...") { ... }` |
| `&nbsp;` | `NbSpace()` |

### Utility helpers

| Helper | Output |
|--------|--------|
| `text "string"` | Appends plain text to the output buffer |
| `NbSpace()` | Appends `&nbsp;` |
| `Partial("path/to/partial")` | Delegates to `render` |
| `DocType()` | Outputs `<!DOCTYPE html>` |
| `StylesheetLink("file.css")` | Wraps `stylesheet_link_tag` |
| `JavascriptImportmap()` | Wraps `javascript_importmap_tags` |
| `CsrfMetaTags()` | Wraps `csrf_meta_tags` |
| `CspMetaTag()` | Wraps `csp_meta_tag` |
| `ContentFor(:name) { ... }` | Wraps `content_for` |
| `Style("css string")` | Renders an inline `<style>` tag |

## Components

All components are registered in `ComponentHelper::COMPONENT_MAP` (`app/helpers/component_helper.rb`). Every PascalCase call in a `.html.ruby` view resolves through this map.

### Base class

All components inherit from `Component` (`app/lib/component.rb`), which provides:

- **`ActiveModel::Attributes`** for declarative attribute definitions with types and defaults
- **Named slots** via the `slot` class macro -- yields `self` so callers fill regions:
  ```ruby
  Card { |c|
    c.header { "Title" }
    c.description { "Body text" }
  }
  ```
- **HTML pass-through** -- `id`, `class`, `data`, `style`, `role`, `tabindex`, `title`, `aria`, `target`, `rel` bypass attributes and merge into the rendered tag
- **`merge_html_options`** -- merges component-computed options with user-provided HTML options (classes concatenate, data hashes deep-merge)
- **Dev annotations** -- in development, output is wrapped in `<!-- BEGIN ClassName -->` / `<!-- END ClassName -->` comments

### Component inventory

**Layout Primitives:** VStack, HStack, Column, Row, Pusher, Overlay, LinkTo, SubHeader

**Globals:** Reset, Site, Wrapper, Template, BackButton

**Elements:** Button, ButtonGroup, ButtonTo, Paragraph, Container, Divider, Emoji, Flag, Header, Icon, Image, Input, Tag, TagGroup, List, ListItem, ListContent, ListHeader, ListDescription, Loader, Placeholder, Rail, Reveal, Segment, SegmentGroup, Step, StepGroup, Text

**Collections:** Breadcrumb, Form, Grid, Menu, MenuItem, SubMenu, Message, Table, TableRow, TableCell

**Views:** Ad, ItemGroup, Card, Comment, CommentGroup, CommentReplyGroup, CommentReply, Feed, FeedItem, Item, Statistic

**Modules:** Accordion, AccordionItem, SubAccordion, Calendar, Dimmer, Dropdown, Embed, Flyout, Modal, Nag, Popup, Progress, Slider, Rating, Search, Shape, Sidebar, Sticky, Tab, TabGroup, Toast, Transition

**Behaviors:** Api, State, Visibility

**Blocks:** ResourceListBlock

### Component patterns

**Simple component** -- attributes map to CSS class modifiers:
```ruby
Button(color: "red", size: "large") { "Delete" }
# => <button class="ui red large button">Delete</button>
```

**Component with slots** -- child regions are filled via yielded self:
```ruby
FeedItem { |e|
  e.label { Image(src: "/images/avatar/small/elliot.jpg") }
  e.summary {
    LinkTo(class: "user") { "Elliot Fu" }
    NbSpace()
    Text { "added you as a friend" }
  }
  e.date_inline { "1 Hour Ago" }
  e.meta {
    LinkTo(class: "like") {
      Icon(name: "like")
      NbSpace()
      Text { "4 Likes" }
    }
  }
}
```

**CSS class passthrough** -- for one-off Fomantic classes not covered by component attributes:
```ruby
Menu(class: "equal width") { ... }
```

### method_missing behavior

PascalCase calls not in `COMPONENT_MAP` are handled by `method_missing`:

1. If inside a `Form()` block, the call is tried as an underscored form builder method (e.g. `TextField` -> `f.text_field`)
2. Otherwise, it falls through to `tag.public_send(tag_name)`, generating an arbitrary HTML element

This means typos in component names will not raise errors -- they silently generate unexpected HTML tags.

## Form Builder

rails-active-ui ships with `Ui::FomanticFormBuilder`, a drop-in `ActionView::Helpers::FormBuilder` subclass that wraps every field helper in Fomantic-UI markup.

Set it as the default in your `ApplicationController`:

```ruby
class ApplicationController < ActionController::Base
  default_form_builder Ui::FomanticFormBuilder
end
```

Inside a `Form()` block, method_missing delegates to the form builder. Standard Rails form helpers become PascalCase calls:

```ruby
Form(url: users_path, method: :post) {
  TextField(:name, required: true)
  EmailField(:email)
  Select(:role, [["Admin", "admin"], ["User", "user"]], dropdown: true)
  CheckBox(:terms, label: "I agree to the Terms")
  HiddenField(:token)
  Submit("Save", color: "green")
}
```

### Available form helpers

| `.html.ruby` call | Form builder method | Description |
|---|---|---|
| `TextField(:name)` | `f.text_field :name` | Text input wrapped in `.field` |
| `EmailField(:email)` | `f.email_field :email` | Email input |
| `PasswordField(:password)` | `f.password_field :password` | Password input |
| `NumberField(:age)` | `f.number_field :age` | Number input |
| `UrlField(:website)` | `f.url_field :website` | URL input |
| `TelephoneField(:phone)` | `f.telephone_field :phone` | Telephone input |
| `SearchField(:q)` | `f.search_field :q` | Search input |
| `ColorField(:color)` | `f.color_field :color` | Color picker |
| `RangeField(:volume)` | `f.range_field :volume` | Range slider |
| `DateField(:birthday)` | `f.date_field :birthday` | Date picker (Fomantic calendar) |
| `DatetimeLocalField(:starts_at)` | `f.datetime_local_field :starts_at` | Datetime picker |
| `TimeField(:alarm)` | `f.time_field :alarm` | Time picker |
| `MonthField(:month)` | `f.month_field :month` | Month picker |
| `WeekField(:week)` | `f.week_field :week` | Week picker |
| `TextArea(:bio)` | `f.text_area :bio` | Textarea |
| `EmojiField(:icon)` | `f.emoji_field :icon` | Emoji picker (Stimulus-powered) |
| `Select(:role, choices)` | `f.select :role, choices` | Select dropdown |
| `CheckBox(:terms)` | `f.check_box :terms` | Checkbox with Fomantic styling |
| `RadioButton(:plan, "pro")` | `f.radio_button :plan, "pro"` | Radio button |
| `HiddenField(:token)` | `f.hidden_field :token` | Hidden input (no wrapper) |
| `FileField(:avatar)` | `f.file_field :avatar` | File upload |
| `Submit("Save")` | `f.submit "Save"` | Submit button with Fomantic styling |

### Field options

All field helpers accept these options:

- `label:` -- override label text (`nil` to suppress)
- `required:` -- adds "required" class and asterisk
- `disabled:` -- adds "disabled" class
- `readonly:` -- adds "read-only" class
- `inline:` -- label sits beside the input
- `width:` -- Fomantic grid column word (e.g. `"six"`, `"three"`)
- `error:` -- error message string, adds "error" class
- `warning:` -- warning message string, adds "warning" class
- `hint:` -- grey note beneath the input
- `field_class:` -- extra classes on the wrapping `.field` div
- `input_class:` -- extra classes on the input element

### Submit button options

- `color:` -- Fomantic color (e.g. `"green"`, `"red"`, `"blue"`)
- `size:` -- Fomantic size (e.g. `"tiny"`, `"large"`)
- `basic:` -- basic button style
- `icon:` -- icon name (e.g. `"checkmark"`)
- `inverted:` -- inverted style

### Checkbox / Radio options

- `kind:` -- `:checkbox` (default), `:slider`, or `:toggle`
- `size:` -- Fomantic size
- `inverted:` -- inverted style
- `fitted:` -- removes label padding
- `right_aligned:` -- label appears on the left

### Field groups

```ruby
Form(url: users_path) {
  FieldsGroup(equal_width: true) {
    TextField(:first_name)
    TextField(:last_name)
  }
}
```

### Form-level messages

```ruby
Form(url: users_path) {
  ErrorMessage("Something went wrong", ["Email is taken"])
  SuccessMessage("All done!", "Profile updated.")
  WarningMessage("Heads up", ["Verify your email"])
  InfoMessage("Note", ["This is informational"])
}
```

## FuiHelper

`FuiHelper` is auto-included into `ActionView::Base` and provides:

- **`fui_javascript_tags`** -- emits `<script>` tags for jQuery and all 23 Fomantic-UI component scripts in the correct load order (site and transition first)
- **`datatable(columns:, options:, &block)`** -- renders a DataTables-powered table wrapped in a `fui-datatable` Stimulus controller div

## Example Browser

The repository includes a full Rails application that serves as a live example browser for all components. Example views live under `app/views/examples/` organized by Fomantic-UI category:

```
app/views/examples/
  collections/    # breadcrumb, form, grid, menu, message, table
  elements/       # button, container, divider, emoji, flag, header, icon, image, input, list, etc.
  examples/       # attached, bootstrap, dashboard, fixed, grid, homepage, login, etc.
  modules/        # accordion, calendar, checkbox, dimmer, dropdown, tab, etc.
  views/          # advertisement, card, comment, feed, item, statistic
```

Run `bin/rails server` and visit `http://localhost:3000` to browse all examples. See `CONVERTING_EXAMPLES.md` for the guide on converting Fomantic-UI HTML docs into `.html.ruby` example views.
