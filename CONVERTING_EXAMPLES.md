# Converting Fomantic-UI HTML Examples to Component Views

This guide explains how to convert Fomantic-UI documentation pages (HTML) into `.html.ruby` example views using the rails-active-ui component DSL.

## Overview

Each Fomantic-UI docs page (e.g. https://fomantic-ui.com/elements/button.html) gets converted into a file at `app/views/examples/{category}/{component}.html.ruby`. The HTML examples on each page are translated into Ruby component calls.

## File Structure

Example views live under `app/views/examples/` organized by Fomantic category:

```
app/views/examples/
  collections/    # breadcrumb, form, grid, menu, message, table
  elements/       # button, container, divider, header, icon, image, input, label(tag), list, etc.
  examples/       # attached, bootstrap, dashboard, fixed, grid, homepage, login, etc.
  modules/        # accordion, calendar, checkbox, dimmer, dropdown, tab, etc.
  views/          # advertisement, card, comment, feed, item, statistic
```

## Wrapping Pattern

Every example block gets wrapped with a `Header` and `Wrapper`:

```ruby
Header { "Example Title" }
Wrapper(style: "contain: layout style;") {
  # component calls go here
}
```

- `Header` renders a `<h2 class="ui header">` — use it as a section label
- `Wrapper` provides layout containment for the example

Multiple examples in a single file are simply stacked:

```ruby
Header { "Basic" }
Wrapper(style: "contain: layout style;") {
  Button { "Click Me" }
}

Header { "Colored" }
Wrapper(style: "contain: layout style;") {
  Button(color: "red") { "Red" }
  Button(color: "blue") { "Blue" }
}
```

## Text Content

When a block contains ONLY a string, just return it:

```ruby
Button { "Save" }
Header { "Page Title" }
Tag(color: "red") { "Error" }
```

When mixing text with other components, use `Text { "..." }` for each piece of text and `NbSpace()` for visual separation:

```ruby
Button(color: "blue") {
  Icon(name: "edit")
  NbSpace()
  Text { "Add Reply" }
}

MenuItem {
  Icon(name: "trash")
  NbSpace()
  Text { "Move to trash" }
}

MenuItem(value: "us") { Flag(name: "us"); NbSpace(); Text { "United States" } }
```

### Inline Wrappers

`Text` renders a `<span>`. Use it for ALL inline text content -- after icons, flags, images, tags, or for Fomantic's `.text`, `.description`, `.content` spans:

| HTML | Ruby DSL |
|------|----------|
| `<span>...</span>` | `Text { "..." }` |
| `<span class="text">...</span>` | `Text(class: "text") { "..." }` |
| `<span class="description">...</span>` | `Text(class: "description") { "..." }` |
| `<span class="content">...</span>` | `Text(class: "content") { "..." }` |
| `<span class="ui red text">...</span>` | `Text(color: "red") { "..." }` |
| `&nbsp;` | `NbSpace()` |
| text after Icon/Flag/Image/Tag | `NbSpace()` then `Text { "..." }` |

`Text` also supports `color`, `size`, and `weight` attributes for Fomantic-UI text styling.

`Space` outputs a non-breaking space entity (`&nbsp;`). Use it between a visual element (Icon, Flag, Image, Tag) and its text label.

**NEVER use `text " Something"` with a leading space in the string.** That's a hack. The correct pattern is always `NbSpace()` then `Text { "Something" }`.

## HTML to Component Mapping

### General Rules

1. `<div class="ui {modifiers} {component}">` maps to `ComponentName(modifier: true/value)`
2. CSS class modifiers become keyword arguments: `inverted` → `inverted: true`, `color` → `color: "red"`, `size` → `size: "large"`
3. Extra CSS classes not covered by attributes use `class: "extra classes"`
4. Components without arguments or blocks need empty parens: `Column()` not `Column` (Ruby treats bare PascalCase as constant lookup)
5. Child components of a group use the `{Parent}Item` naming pattern: `MenuItem`, `ListItem`, `AccordionItem`, `FeedItem`. Not `FeedEvent`, `MenuEntry`, `ListElement`, etc.

### Inline Elements

Every HTML element must be a component call -- including plain HTML elements that appear inside Fomantic components. These are the components for common non-Fomantic elements:

| HTML | Ruby DSL |
|------|----------|
| `<a>Text</a>` | `LinkTo { "Text" }` |
| `<a class="user">Name</a>` | `LinkTo(class: "user") { "Name" }` |
| `<a href="/path">Link</a>` | `LinkTo(href: "/path") { "Link" }` |
| `<a><img src="..."></a>` | `LinkTo { Image(src: "...") }` |
| `<span class="ui purple text">` | `Text(color: "purple") { "..." }` |
| `<div>` (generic wrapper) | `Wrapper(class: "...") { ... }` |
| `<div data-text="Run">` | `Wrapper(data: { text: "Run" }) { ... }` |

When converting mixed inline text and elements (e.g. `<a>Name</a> posted on <a>Page</a>`), interleave component calls with `NbSpace()` and `Text`:

```ruby
LinkTo { "Name" }
NbSpace()
Text { "posted on" }
NbSpace()
LinkTo { "Page" }
```

A common pattern in feeds and comments is a "like" link with an icon:

```ruby
# <a class="like"><i class="like icon"></i> 4 Likes</a>
LinkTo(class: "like") {
  Icon(name: "like")
  NbSpace()
  Text { "4 Likes" }
}
```

### Common Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui segment">` | `Segment { ... }` |
| `<div class="ui inverted segment">` | `Segment(inverted: true) { ... }` |
| `<div class="ui grid">` | `Grid { ... }` |
| `<div class="ui three column grid">` | `Grid(columns: 3) { ... }` |
| `<div class="column">` | `Column() { ... }` |
| `<div class="four wide column">` | `Column(width: 4) { ... }` |
| `<div class="row">` | `Row { ... }` |
| `<div class="three column row">` | `Row(columns: 3) { ... }` |
| `<div class="ui button">` | `Button { ... }` |
| `<div class="ui red button">` | `Button(color: "red") { ... }` |
| `<i class="search icon">` | `Icon(name: "search")` |
| `<img class="ui image" src="...">` | `Image(src: "...", class: "...")` |
| `<div class="ui divider">` | `Divider()` |
| `<p>` | `Paragraph { "text" }` |
| `<h1 class="ui header">` | `Header(size: :h1) { "text" }` |
| `<h2 class="ui header">` | `Header(size: :h2) { "text" }` |

### Menu Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui menu">` | `Menu { ... }` |
| `<div class="ui inverted menu">` | `Menu(inverted: true) { ... }` |
| `<div class="ui secondary pointing menu">` | `Menu(secondary: true, pointing: true) { ... }` |
| `<a class="active item">` | `MenuItem(active: true, href: "#") { ... }` |
| `<a class="item">` | `MenuItem(href: "#") { ... }` |
| `<div class="item">` | `MenuItem { ... }` |
| `<div class="right menu">` | `SubMenu(position: "right") { ... }` |
| `<div class="ui dropdown item">` | `MenuItem(dropdown: true) { ... }` |

### Tag (Label) Components

Fomantic's `label` element is called `Tag` in the DSL to avoid collision with Rails' `label` form helper:

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui label">` | `Tag { ... }` |
| `<div class="ui red label">` | `Tag(color: "red") { ... }` |
| `<div class="ui tag label">` | `Tag(tag_style: true) { ... }` |
| `<div class="ui ribbon label">` | `Tag(ribbon: true) { ... }` |
| `<div class="ui image label">` | `Tag(image: true) { ... }` |
| `<div class="ui labels">` | `TagGroup { ... }` |
| `<div class="ui blue labels">` | `TagGroup(color: "blue") { ... }` |

### List Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui list">` | `List { ... }` |
| `<div class="ui bulleted list">` | `List(bulleted: true) { ... }` |
| `<div class="ui ordered list">` | `List(ordered: true) { ... }` |
| `<div class="item">` (in list) | `ListItem { ... }` |
| `<a class="item">` (in list) | `ListItem(href: "#") { ... }` |
| `<div class="content">` (in list item) | `ListContent { ... }` |
| `<div class="header">` (in list item) | `ListHeader { ... }` |
| `<div class="description">` (in list item) | `ListDescription { ... }` |

### Step Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui steps">` | `StepGroup { ... }` |
| `<div class="ui ordered steps">` | `StepGroup(ordered: true) { ... }` |
| `<div class="ui circular steps">` | `StepGroup(circular: true) { ... }` |
| `<div class="step">` | `Step(title: "...", description: "...", icon: "...")` |
| `<div class="active step">` | `Step(active: true, ...)` |
| `<div class="completed step">` | `Step(completed: true, ...)` |
| `<div class="disabled step">` | `Step(disabled: true, ...)` |

### Tab Components

| HTML | Ruby DSL |
|------|----------|
| `<div data-controller="fui-tab">` | `TabGroup { ... }` |
| `<div class="ui tab" data-tab="path">` | `Tab(path: "path", ...) { ... }` |
| `<div class="ui active tab segment" data-tab="x">` | `Tab(active: true, path: "x", attached: true, segment: true) { ... }` |
| `<div class="item" data-tab="x">` | `MenuItem(tab: "x") { ... }` |

### Comment Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui comments">` | `CommentGroup { ... }` |
| `<div class="ui threaded comments">` | `CommentGroup(threaded: true) { ... }` |
| `<div class="comment">` (top-level) | `Comment { \|c\| c.avatar { ... }; c.author { "..." }; ... }` |
| `<div class="comments">` (nested) | `CommentReplyGroup { ... }` |
| `<div class="collapsed comments">` | `CommentReplyGroup(collapsed: true) { ... }` |
| `<div class="comment">` (nested) | `CommentReply { \|c\| ... }` |

Comment and CommentReply use slots:

```ruby
Comment { |c|
  c.avatar { Image(src: "/images/avatar/small/matt.jpg") }
  c.author { "Matt" }
  c.metadata { "Today at 5:42PM" }
  c.text_slot { "How artistic!" }
  c.actions { "Reply" }
  # Nested replies go in the block content (after slots):
  CommentReplyGroup {
    CommentReply { |c|
      c.avatar { Image(src: "/images/avatar/small/jenny.jpg") }
      c.author { "Jenny" }
      c.text_slot { "Great comment!" }
    }
  }
}
```

### Feed Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui feed">` | `Feed { ... }` |
| `<div class="ui small feed">` | `Feed(size: "small") { ... }` |
| `<div class="ui inverted feed">` | `Feed(inverted: true) { ... }` |
| `<div class="ui connected feed">` | `Feed(connected: true) { ... }` |
| `<div class="ui divided feed">` | `Feed(divided: true) { ... }` |
| `<div class="ui ordered feed">` | `Feed(ordered: true) { ... }` |
| `<div class="ui disabled feed">` | `Feed(disabled: true) { ... }` |
| `<div class="event">` | `FeedItem { \|e\| ... }` |
| `<div class="disabled event">` | `FeedItem(disabled: true) { \|e\| ... }` |

FeedItem uses slots:

```ruby
Feed {
  FeedItem { |e|
    e.label { Image(src: "/images/avatar/small/elliot.jpg") }
    e.summary {
      LinkTo(class: "user") { "Elliot Fu" }
      NbSpace()
      Text { "added you as a friend" }
    }
    e.date_inline { "1 Hour Ago" }
    e.extra_text { "Some additional context" }
    e.extra_images {
      LinkTo { Image(src: "/images/wireframe/image.png") }
    }
    e.meta {
      LinkTo(class: "like") {
        Icon(name: "like")
        NbSpace()
        Text { "4 Likes" }
      }
    }
  }
}
```

Available slots: `label`, `summary`, `date` (top of content), `date_inline` (inside summary), `extra_text`, `extra_images`, `meta`.

### Accordion Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui accordion">` | `Accordion { ... }` |
| `<div class="ui styled accordion">` | `Accordion(styled: true) { ... }` |
| `<div class="ui styled fluid accordion">` | `Accordion(styled: true, fluid: true) { ... }` |
| `<div class="ui inverted accordion">` | `Accordion(inverted: true) { ... }` |
| `<div class="ui tree accordion">` | `Accordion(tree: true) { ... }` |
| `<div class="active title">` + `<div class="active content">` | `AccordionItem(active: true) { \|i\| i.title { ... }; i.content { ... } }` |
| `<div class="accordion">` (nested) | `SubAccordion { ... }` |

AccordionItem uses slots:

```ruby
Accordion(styled: true) {
  AccordionItem(active: true) { |i|
    i.title { "What is a dog?" }
    i.content {
      Paragraph { "A dog is a type of domesticated animal." }
    }
  }
  AccordionItem { |i|
    i.title { "How do you acquire a dog?" }
    i.content {
      Paragraph { "From pet shops, private owners, or shelters." }
    }
  }
}
```

For nested accordions, use `SubAccordion` inside a content slot:

```ruby
Accordion(tree: true) {
  AccordionItem(active: true) { |i|
    i.title { "Level 1" }
    i.content {
      SubAccordion {
        AccordionItem { |i2|
          i2.title { "Level 1A" }
          i2.content { "Level 1A Contents" }
        }
      }
    }
  }
}
```

### Dropdown Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui dropdown">` | `Dropdown { ... }` |
| `<div class="ui selection dropdown">` | `Dropdown(selection: true) { ... }` |
| `<div class="ui search selection dropdown">` | `Dropdown(search: true, selection: true) { ... }` |
| `<div class="ui multiple search selection dropdown">` | `Dropdown(multiple: true, search: true, selection: true) { ... }` |
| `<div class="ui clearable selection dropdown">` | `Dropdown(clearable: true, selection: true) { ... }` |
| `<div class="ui fluid dropdown">` | `Dropdown(fluid: true) { ... }` |
| `<div class="ui floating dropdown">` | `Dropdown(floating: true) { ... }` |
| `<div class="ui inline dropdown">` | `Dropdown(inline: true) { ... }` |
| `<div class="ui compact dropdown">` | `Dropdown(compact: true) { ... }` |
| `<div class="ui scrolling dropdown">` | `Dropdown(scrolling: true) { ... }` |
| `<div class="ui loading dropdown">` | `Dropdown(loading: true) { ... }` |
| `<div class="ui disabled dropdown">` | `Dropdown(disabled: true) { ... }` |
| `<div class="ui floating labeled search icon button dropdown">` | `Dropdown(floating: true, labeled: true, search: true, button: true) { ... }` |
| `<div class="ui top left pointing dropdown">` | `Dropdown(pointing: "top left") { ... }` |
| `<div class="default text">Placeholder</div>` | `placeholder: "Placeholder"` attribute on Dropdown |
| `<input type="hidden" name="x">` | `name: "x"` attribute on Dropdown |
| `<input type="hidden" value="v">` | `default_value: "v"` attribute on Dropdown |
| `<div class="scrolling menu">` (inside dropdown) | `SubMenu(class: "scrolling") { ... }` |
| `<div class="inverted menu">` (inside dropdown) | `SubMenu(class: "inverted") { ... }` |
| `<div class="header">` (inside dropdown menu) | `MenuItem(header: true) { ... }` |
| `<div class="item" data-value="x">` (inside dropdown) | `MenuItem(value: "x") { ... }` |

Dropdown items are regular `MenuItem` calls. The Dropdown component renders the hidden input, search input, text/placeholder, dropdown icon, and menu wrapper automatically -- you only provide the menu contents in the block.

```ruby
Dropdown(search: true, selection: true, fluid: true, name: "country", placeholder: "Select Country") {
  MenuItem(value: "us") { Flag(name: "us"); NbSpace(); Text { "United States" } }
  MenuItem(value: "ca") { Flag(name: "ca"); NbSpace(); Text { "Canada" } }
  MenuItem(value: "gb") { Flag(name: "gb"); NbSpace(); Text { "United Kingdom" } }
}
```

For dropdowns with a scrolling sub-section, search input, and headers inside the menu:

```ruby
Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter Posts") {
  Input(icon: "search", placeholder: "Search tags...")
  Divider()
  MenuItem(header: true) {
    Icon(name: "tags")
    NbSpace()
    Text { "Filter by tag" }
  }
  SubMenu(class: "scrolling") {
    MenuItem {
      Tag(color: "red", circular: true, empty: true)
      NbSpace()
      Text { "Important" }
    }
    MenuItem {
      Tag(color: "blue", circular: true, empty: true)
      NbSpace()
      Text { "Announcement" }
    }
  }
}
```

### ButtonGroup Components

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui buttons">` | `ButtonGroup { ... }` |
| `<div class="ui teal buttons">` | `ButtonGroup(color: "teal") { ... }` |
| `<div class="ui icon buttons">` | `ButtonGroup(icon: true) { ... }` |
| `<div class="ui vertical buttons">` | `ButtonGroup(vertical: true) { ... }` |
| `<div class="ui basic buttons">` | `ButtonGroup(basic: true) { ... }` |

```ruby
ButtonGroup(color: "teal") {
  Button { "Save" }
  Dropdown(floating: true, button: true) {
    MenuItem { Icon(name: "edit"); NbSpace(); Text { "Edit Post" } }
    MenuItem { Icon(name: "delete"); NbSpace(); Text { "Remove Post" } }
  }
}
```

### Form / Checkbox Components

Checkboxes and radio buttons go through the Rails form builder. Always wrap in `Form(url: "#")`:

| HTML | Ruby DSL |
|------|----------|
| `<div class="ui checkbox">` | `CheckBox(:name, label: "...")` |
| `<div class="ui radio checkbox">` | `RadioButton(:name, "value", label: "...")` |
| `<div class="ui toggle checkbox">` | `CheckBox(:name, label: "...", kind: :toggle)` |
| `<div class="ui slider checkbox">` | `CheckBox(:name, label: "...", kind: :slider)` |
| `<div class="ui mini checkbox">` | `CheckBox(:name, label: "...", size: "mini")` |
| `<div class="fields">` | `FieldsGroup { ... }` |

```ruby
Header { "Toggle" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:newsletter, label: "Subscribe", kind: :toggle)
  }
}
```

### Header Components

| HTML | Ruby DSL |
|------|----------|
| `<h1 class="ui header">` | `Header(size: :h1) { ... }` |
| `<h2 class="ui header">` | `Header(size: :h2) { ... }` (default) |
| `<div class="ui huge header">` | `Header(size: :h2, class: "huge") { ... }` |
| `<div class="sub header">` | `SubHeader { ... }` |
| `<h2 class="ui icon header"><i class="settings icon">` | `Header(size: :h2, icon: "settings") { ... }` |
| `<h3 class="ui dividing header">` | `Header(size: :h3, dividing: true) { ... }` |
| `<h3 class="ui block header">` | `Header(size: :h3, block_header: true) { ... }` |
| `<h3 class="ui top attached header">` | `Header(size: :h3, attached: "top") { ... }` |

## Images

All Fomantic-UI doc images are available at `/images/`. They were cloned from the Fomantic-UI-Docs repo into `public/images/`. Common paths:

- `/images/avatar/small/{name}.jpg` — small avatar photos
- `/images/avatar2/small/{name}.png` — alternate avatar set
- `/images/wireframe/paragraph.png` — placeholder paragraph
- `/images/wireframe/image.png` — placeholder image
- `/images/wireframe/short-paragraph.png` — short placeholder
- `/images/wireframe/media-paragraph.png` — media placeholder
- `/images/icons/school.png`, `/images/icons/plugin.png` — icon images

## Attributes Not on Components

When Fomantic has a CSS class that isn't a dedicated component attribute, pass it via `class:`:

```ruby
# <div class="ui equal width menu"> — no equal_width attribute on Menu
Menu(class: "equal width") { ... }

# <div class="ui centered menu"> — no centered attribute on Menu
Menu(class: "centered") { ... }

# <div class="ui wrapped wrapping menu">
Menu(class: "wrapped wrapping") { ... }
```

## Rules

0. **NEVER use `tag.*` helpers in view files.** No `tag.div`, `tag.span`, `tag.i`, `tag.input`, `tag.label`, or any other `tag.*` call belongs in a `.html.ruby` view. Every HTML element must be rendered through a component call. If no component exists for the structure you need, create one first (or use an existing component with `class:` passthrough). There are zero exceptions. The `tag.*` helpers exist for use inside component `to_s` methods only -- never in views.

1. **Every HTML element with a class becomes a component call.** If the HTML has `<div class="title">`, that's a component. If it has `<div class="content">`, that's a component. If no component exists yet, create one before writing the example view.

2. **Repeated structural patterns inside a parent get their own child component.** A parent with repeating children (accordion with panels, feed with events, list with items) always follows this structure:
   - **Parent**: thin wrapper rendering `@content` — it has no knowledge of its children
   - **Child**: self-contained component rendering its own element with its own CSS classes

3. **When a child has multiple named regions, use slots.** If a child element contains distinct sub-regions (title + content, avatar + author + text, header + body + actions), declare them as slots. The view yields `self` and callers fill each region:

   ```ruby
   AccordionItem(active: true) { |i|
     i.title { "Section Title" }
     i.content { Paragraph { "Panel content" } }
   }
   ```

   Other slot examples: `Comment` (avatar, author, metadata, text_slot, actions), `FeedItem` (label, summary, date, meta), `Modal` (header, content, actions).

4. **Nested variants of a parent use a `Sub{Component}`.** When a component can nest inside itself with different markup (no `ui` prefix, no Stimulus controller), create a `Sub{Component}` following the `SubMenu` / `SubAccordion` pattern.

5. **Use `Text { "..." }` for inline text content, not lowercase `text`.** When text appears alongside other components (after an Icon, Flag, Image, Tag, etc.), wrap it in `Text { "..." }` and precede it with `NbSpace()` for visual separation. Never use `text " Something"` with a leading space -- use `NbSpace()` then `Text { "Something" }`.

6. **Use `class:` passthrough for one-off CSS classes.** Reserve component attributes for commonly reused modifiers.

7. **Prefer `{ "string" }` over `Text { "string" }` for text-only blocks.** When a component block contains nothing but a string, just return it directly: `Button { "Save" }` not `Button { Text { "Save" } }`.

8. **Always use parens or a block for PascalCase calls.** `Column()` is a method call. `Column` is a constant lookup.

9. **Use the form builder for checkboxes and radio buttons.** Always wrap in `Form(url: "#") { CheckBox(...) }`.

## Process for Converting a Page

1. **Save the HTML** from the Fomantic-UI docs page
2. **Identify the examples** — look for content inside `<div class="main ui container">`, skip nav/sidebar/footer
3. **Map each example section** to a `Header` + `Wrapper` block
4. **Identify every structural pattern** — before writing any view code, check that every repeated HTML structure (title/content pairs, label/value groups, header/body/actions) has a corresponding component. If not, create the component first.
5. **Translate HTML to component calls** using the mapping tables above
6. **Check for missing component attributes** — if needed, either:
   - Add the attribute to the component (if it's a common pattern)
   - Use `class: "..."` passthrough (if it's rare/one-off)
7. **Test** by visiting `http://localhost:3000/examples/{category}/{component}`

## Prohibited Patterns

These patterns are **never** acceptable in `.html.ruby` views. Every one of these has a component equivalent:

| WRONG (raw tag helper) | RIGHT (component call) |
|------------------------|----------------------|
| `tag.div(class: "header") { ... }` | `MenuItem(header: true) { ... }` |
| `tag.div(class: "item") { ... }` | `MenuItem { ... }` |
| `tag.div(class: "vertical item") { ... }` | `MenuItem(class: "vertical") { ... }` |
| `tag.div(class: "scrolling menu") { ... }` | `SubMenu(class: "scrolling") { ... }` |
| `tag.div(class: "left menu") { ... }` | `SubMenu(position: "left") { ... }` |
| `tag.div(class: "right menu") { ... }` | `SubMenu(position: "right") { ... }` |
| `tag.div(class: "inverted menu") { ... }` | `SubMenu(class: "inverted") { ... }` |
| `tag.span { "..." }` | `Text { "..." }` |
| `tag.span(class: "text") { "..." }` | `Text(class: "text") { "..." }` |
| `tag.span(class: "description") { "..." }` | `Text(class: "description") { "..." }` |
| `tag.i(class: "search icon")` | `Icon(name: "search")` |
| `tag.i(class: "dropdown icon")` | `Icon(name: "dropdown")` |
| `tag.i(class: "attention right floated icon")` | `Icon(name: "attention", class: "right floated")` |
| `tag.div(class: "ui red empty circular label")` | `Tag(color: "red", circular: true, empty: true)` |
| `tag.div(class: "ui teal buttons") { ... }` | `ButtonGroup(color: "teal") { ... }` |
| `tag.div(class: "ui icon buttons") { ... }` | `ButtonGroup(icon: true) { ... }` |
| `tag.div(class: "ui icon search input") { ... }` | `Input(icon: "search", placeholder: "...")` |
| `tag.div(class: "ui left search icon input") { ... }` | `Input(icon: "search", icon_position: "left", placeholder: "...")` |
| `tag.input(type: "text", placeholder: "...")` | `Input(placeholder: "...")` |
| `tag.label { "Name" }` | `Input(label: "Name", ...)` |
| `tag.div(class: "two fields") { ... }` | `FieldsGroup(class: "two") { ... }` |
| `tag.div(class: "content") { ... }` | `Text(class: "content") { ... }` or `ListContent { ... }` |
| `tag.div(class: "ui segment") { ... }` | `Segment { ... }` |
| `text " Something"` (leading space hack) | `NbSpace()` then `Text { "Something" }` |
| `text "Something"` after a component | `Text { "Something" }` (use `NbSpace()` before if separation needed) |

**The decision process when you encounter HTML without an obvious component:**

1. Check the mapping tables in this guide first
2. Check `COMPONENT_MAP` in `component_helper.rb` for existing components
3. Check if an existing component accepts `class:` passthrough for the CSS class you need
4. If none of the above work, **create a new component** before writing the view
5. `tag.*` is never the answer in a view file

## Component Registry

All components are registered in `engines/rails-active-ui/app/helpers/component_helper.rb` in the `COMPONENT_MAP` hash. If a PascalCase call isn't in the map:

1. If `@_form_builder` is set (inside a `Form(url: ...)` block), it tries the form builder (`CheckBox` → `check_box`)
2. Otherwise, it falls through to `method_missing` which renders a custom HTML tag (`MyThing` → `<my-thing>`)

## Files Changed Per Conversion

Typically a conversion only touches:
- `app/views/examples/{category}/{component}.html.ruby` — the example view file

Sometimes you also need:
- `engines/rails-active-ui/app/components/{component}_component.rb` — new or updated component
- `engines/rails-active-ui/app/helpers/component_helper.rb` — register new components in COMPONENT_MAP
