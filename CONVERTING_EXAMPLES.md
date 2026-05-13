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

Two ways to output text:

```ruby
# When the block contains ONLY a string — just return it:
Button { "Save" }
Header { "Page Title" }
Tag(color: "red") { "Error" }

# When mixing text with other components — use `text`:
Button(color: "blue") {
  Icon(name: "edit")
  text " Add Reply"
}
```

Prefer `{ "string" }` over `{ text "string" }` for simple text-only blocks.

## HTML to Component Mapping

### General Rules

1. `<div class="ui {modifiers} {component}">` maps to `ComponentName(modifier: true/value)`
2. CSS class modifiers become keyword arguments: `inverted` → `inverted: true`, `color` → `color: "red"`, `size` → `size: "large"`
3. Extra CSS classes not covered by attributes use `class: "extra classes"`
4. Components without arguments or blocks need empty parens: `Column()` not `Column` (Ruby treats bare PascalCase as constant lookup)

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

### Form / Checkbox Components

Checkboxes go through the Rails form builder, not standalone components. Wrap in `Form(url: "#")`:

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

## What NOT to Do

1. **Don't modify components** to add attributes — use `class:` passthrough for one-off CSS classes
2. **Don't use `{ text "string" }` when `{ "string" }` works** — prefer the shorter form
3. **Don't write bare PascalCase without parens or a block** — `Column` is a constant lookup, `Column()` is a method call
4. **Don't use `Edit` on existing content** when appending to a file — use `cat >>` to append safely
5. **Don't create standalone checkbox/radio components** — use the form builder via `Form(url: "#") { CheckBox(...) }`

## Process for Converting a Page

1. **Save the HTML** from the Fomantic-UI docs page
2. **Identify the examples** — look for content inside `<div class="main ui container">`, skip nav/sidebar/footer
3. **Map each example section** to a `Header` + `Wrapper` block
4. **Translate HTML to component calls** using the mapping tables above
5. **Check for missing component attributes** — if needed, either:
   - Add the attribute to the component (if it's a common pattern)
   - Use `class: "..."` passthrough (if it's rare/one-off)
   - Create new components if the structure requires it (e.g. `CommentGroup`, `TagGroup`)
6. **Test** by visiting `http://localhost:3000/examples/{category}/{component}`

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
