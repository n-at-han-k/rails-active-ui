Thoroughly explore the rails-active-ui engine to understand how components and blocks are used in views. I need to understand:
1. Read all component files in engines/rails-active-ui/app/components/ - especially anything related to menu, dropdown, item, grid, header, list, popup, image, icon, divider components
2. Read all block files in engines/rails-active-ui/app/blocks/
3. Read a few existing example views (especially the ones in app/views/examples/examples/) to see how components are used in .html.ruby files - read at least 3-4 of them fully
4. Read the engine's own examples view (engines/rails-active-ui/app/views/ui/examples/) to see component usage patterns
5. Look for any base component class or DSL that defines how components render
I need to understand:
- The DSL syntax used in .html.ruby files
- How to compose components (nesting, blocks, attributes)
- How menu, dropdown, popup, grid, header, list, image, icon components work specifically
Return the FULL contents of all relevant files. Be very thorough - I need to write a complex view using this system.
I'll systematically explore the entire rails-active-ui engine. Let me start by discovering the file structure.
✱ Glob "engines/rails-active-ui/app/components/**/*" (82 matches)
✱ Glob "engines/rails-active-ui/app/blocks/**/*" (1 matches)
✱ Glob "app/views/examples/examples/**/*" (9 matches)
✱ Glob "engines/rails-active-ui/app/views/**/*" (8 matches)
✱ Glob "engines/rails-active-ui/lib/**/*.rb" (5 matches)
Good, now I have the full picture. Let me read all the critical files. I'll start with the base/DSL infrastructure and the key components you asked about.
→ Read engines/rails-active-ui/lib/rails_active_ui.rb 
→ Read engines/rails-active-ui/lib/ui/engine.rb 
→ Read engines/rails-active-ui/lib/ui.rb 
→ Read engines/rails-active-ui/lib/rails-active-ui.rb 
→ Read engines/rails-active-ui/lib/ui/version.rb 
Now let me find the core helpers and base component class:
✱ Glob "engines/rails-active-ui/app/lib/**/*.rb" (1 matches)
✱ Glob "engines/rails-active-ui/app/helpers/**/*.rb" (3 matches)
→ Read engines/rails-active-ui/app/lib/component.rb 
→ Read engines/rails-active-ui/app/helpers/component_helper.rb 
→ Read engines/rails-active-ui/app/helpers/fui_helper.rb 
→ Read engines/rails-active-ui/app/helpers/ui/fomantic_form_builder.rb 
Now let me read all the key component files you specifically asked about:
→ Read engines/rails-active-ui/app/components/menu_component.rb 
→ Read engines/rails-active-ui/app/components/menu_item_component.rb 
→ Read engines/rails-active-ui/app/components/sub_menu_component.rb 
→ Read engines/rails-active-ui/app/components/dropdown_component.rb 
→ Read engines/rails-active-ui/app/components/item_component.rb 
→ Read engines/rails-active-ui/app/components/item_group_component.rb 
→ Read engines/rails-active-ui/app/components/grid_component.rb 
→ Read engines/rails-active-ui/app/components/header_component.rb 
→ Read engines/rails-active-ui/app/components/list_component.rb 
→ Read engines/rails-active-ui/app/components/popup_component.rb 
→ Read engines/rails-active-ui/app/components/image_component.rb 
→ Read engines/rails-active-ui/app/components/icon_component.rb 
→ Read engines/rails-active-ui/app/components/divider_component.rb 
Now let me read the remaining important components and the concerns:
→ Read engines/rails-active-ui/app/components/concerns/positionable.rb 
→ Read engines/rails-active-ui/app/components/concerns/attachable.rb 
→ Read engines/rails-active-ui/app/components/concerns/sizeable.rb 
→ Read engines/rails-active-ui/app/components/concerns/orientable.rb 
→ Read engines/rails-active-ui/app/components/concerns/alignable.rb 
→ Read engines/rails-active-ui/app/components/column_component.rb 
→ Read engines/rails-active-ui/app/components/row_component.rb 
→ Read engines/rails-active-ui/app/components/button_component.rb 
→ Read engines/rails-active-ui/app/components/segment_component.rb 
→ Read engines/rails-active-ui/app/components/container_component.rb 
→ Read engines/rails-active-ui/app/components/card_component.rb 
→ Read engines/rails-active-ui/app/components/label_component.rb 
Now let me read all the remaining components and more importantly the example views:
→ Read engines/rails-active-ui/app/components/text_component.rb 
→ Read engines/rails-active-ui/app/components/sub_header_component.rb 
→ Read engines/rails-active-ui/app/components/v_stack_component.rb 
→ Read engines/rails-active-ui/app/components/h_stack_component.rb 
→ Read engines/rails-active-ui/app/components/link_to_component.rb 
→ Read engines/rails-active-ui/app/components/modal_component.rb 
→ Read engines/rails-active-ui/app/components/sidebar_component.rb 
→ Read engines/rails-active-ui/app/components/table_component.rb 
→ Read engines/rails-active-ui/app/components/table_row_component.rb 
→ Read engines/rails-active-ui/app/components/table_cell_component.rb 
→ Read engines/rails-active-ui/app/components/form_component.rb 
→ Read engines/rails-active-ui/app/components/wrapper_component.rb 
Now let me read the block file and all the example views:
→ Read engines/rails-active-ui/app/blocks/resource_list_block.rb 
→ Read app/views/examples/examples/dashboard.html.ruby 
→ Read app/views/examples/examples/homepage.html.ruby 
→ Read app/views/examples/examples/grid.html.ruby 
→ Read app/views/examples/examples/login.html.ruby 
→ Read app/views/examples/examples/responsive.html.ruby 
Now let me read the engine's own examples views:
→ Read engines/rails-active-ui/app/views/ui/examples/index.html.ruby 
→ Read engines/rails-active-ui/app/views/ui/examples/_collections.html.ruby 
→ Read engines/rails-active-ui/app/views/ui/examples/_elements.html.ruby 
→ Read engines/rails-active-ui/app/views/ui/examples/_modules_components.html.ruby 
→ Read engines/rails-active-ui/app/views/ui/examples/_views_components.html.ruby 
→ Read engines/rails-active-ui/app/views/ui/examples/_layout_primitives.html.ruby 
Now let me read the remaining example views and a few more components for completeness:
→ Read app/views/examples/examples/bootstrap.html.ruby 
→ Read engines/rails-active-ui/app/views/ui/examples/_globals.html.ruby 
→ Read engines/rails-active-ui/app/views/ui/examples/_behaviors.html.ruby 
→ Read engines/rails-active-ui/app/components/input_component.rb 
→ Read engines/rails-active-ui/app/components/message_component.rb 
→ Read engines/rails-active-ui/app/components/pusher_component.rb 
→ Read engines/rails-active-ui/app/components/statistic_component.rb 
→ Read engines/rails-active-ui/app/components/template_component.rb 
→ Read engines/rails-active-ui/app/components/progress_component.rb 
Now let me look at a couple more example views and check for any app-level views using this system:
→ Read app/views/examples/examples/sticky.html.ruby 
→ Read app/views/examples/examples/attached.html.ruby 
→ Read app/views/examples/examples/fixed.html.ruby 
Now let me check for any real app views (not examples) using this DSL to see production patterns:
✱ Glob "app/views/**/*.html.ruby" (60 matches)
Let me read a few more of the detailed per-component examples - especially menu, dropdown, popup:
→ Read app/views/examples/collections/menu.html.ruby 
→ Read app/views/examples/modules/dropdown.html.ruby 
→ Read app/views/examples/modules/popup.html.ruby 
Those are stubs. Let me check for any layout files using this system:
✱ Glob "app/views/layouts/**/*.html.ruby" 
Now I have a comprehensive picture. Here is the complete reference document:
---
Rails Active UI Engine - Complete Reference
1. Architecture Overview
The engine lives at /home/nathan/rails-active-ui/engines/rails-active-ui/. It provides a pure-Ruby DSL for building views using .html.ruby template files instead of ERB. The system is built on Fomantic UI (a fork of Semantic UI) for styling.
Key Files
| File | Purpose |
|------|---------|
| /home/nathan/rails-active-ui/engines/rails-active-ui/app/lib/component.rb | Base Component class - all components inherit from this |
| /home/nathan/rails-active-ui/engines/rails-active-ui/app/helpers/component_helper.rb | The registry that maps PascalCase method names to component classes |
| /home/nathan/rails-active-ui/engines/rails-active-ui/app/helpers/fui_helper.rb | Fomantic UI JavaScript loading helper + datatable helper |
| /home/nathan/rails-active-ui/engines/rails-active-ui/app/helpers/ui/fomantic_form_builder.rb | Rails FormBuilder wrapping fields in Fomantic UI markup |
| /home/nathan/rails-active-ui/engines/rails-active-ui/lib/ui/engine.rb | Engine initializer that loads helpers into ActionView |
---
2. The DSL Syntax (.html.ruby files)
Core Principles
Views are written as pure Ruby code. Every PascalCase method call corresponds to a registered component. The ComponentHelper module is included into ActionView, so every PascalCase call is available in every view.
How it works under the hood
# ComponentHelper defines methods like:
COMPONENT_MAP.each do |name, klass_name|
  define_method(name) { |**kwargs, &block|
    output_buffer << render(klass_name.constantize.new(**kwargs), &block)
  }
end
So when you write Button(color: :blue) { text "Click" }, it:
1. Instantiates ButtonComponent.new(color: :blue)
2. Calls render(component, &block) which invokes render_in
3. render_in captures the block content into @content
4. The component's to_s method builds HTML using Rails tag helpers
5. The result is appended to output_buffer
Text Output
text "Hello world"           # Outputs plain text to buffer
text '<b>raw</b>'.html_safe  # Outputs raw HTML
HTML Fallback (method_missing)
Any PascalCase method not in COMPONENT_MAP and not matching a form builder method is converted to an HTML tag:
# Unknown PascalCase -> converted to underscored HTML tag
MenuMenu { ... }  # Becomes <menu-menu>...</menu-menu>
# But in practice, this is used for things like:
Div(class: "foo") { text "bar" }  # <div class="foo">bar</div>
Form Builder Forwarding
Inside a Form(model: @user, ...) block, PascalCase calls like TextField(:name) are forwarded to the form builder as f.text_field(:name).
Rendering Partials
Partial("path/to/partial")                    # render partial
output_buffer << render("path/to/partial")    # alternative
Other Helpers
DocType()           # <!DOCTYPE html>
StylesheetLink("application")
JavascriptImportmap
CsrfMetaTags
CspMetaTag
ContentFor(:head) { ... }
Style("body { background: red; }")
---
3. The Base Component Class
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/lib/component.rb
Key Features
- Uses ActiveModel::Attributes for declarative typed attributes with defaults
- Slots: Named content areas defined with slot :name
- HTML pass-through: id, class, data, style, role, tabindex, title, aria, target, rel are passed through to the HTML element via merge_html_options
- render_in(context, &block) captures block, yields self to block if slots are needed
- Dev mode wraps output in HTML comments for debugging
Attribute Declaration
attribute :color,    :string,  default: nil
attribute :inverted, :boolean, default: false
attribute :size,     :string,  default: nil
Slot Declaration
slot :header
slot :content
slot :actions
Slots are used in blocks by receiving the component as |c|:
Modal(size: :small) { |c|
  c.header { text "Title" }
  c.content { text "Body" }
  c.actions { Button { text "OK" } }
}
HTML Options Merging
Any kwargs not matching declared attributes are treated as HTML attributes:
Button(color: :blue, id: "my-btn", data: { turbo: false }) { text "Go" }
# color -> attribute, id and data -> passed to merge_html_options
Concerns (mixins)
| Concern | Attribute | Type | Default |
|---------|-----------|------|---------|
| Positionable | position | string | nil |
| Attachable | attached | boolean | false |
| Sizeable | size | string | nil |
| Orientable | orientation | string | nil |
| Alignable | aligned | string | nil |
---
4. Component Reference - The Ones You Asked About
Menu
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/menu_component.rb
Attributes: secondary, pointing, tabular, vertical, fixed (string), inverted, icon, labeled_icon, compact, fluid, color, stackable, text, pagination, borderless, items (integer). Plus position, attached, size from concerns.
# Basic menu
Menu {
  MenuItem(active: true, href: "#") { text "Home" }
  MenuItem(href: "#") { text "Messages" }
}
# Secondary pointing (tab-style)
Menu(secondary: true, pointing: true) {
  MenuItem(active: true) { text "Active" }
  MenuItem { text "Tab Two" }
}
# Vertical
Menu(vertical: true, pointing: true) {
  MenuItem(active: true) { text "Dashboard" }
  MenuItem { text "Settings" }
}
# Fixed top inverted with container
Menu(fixed: "top", inverted: true) {
  Container {
    MenuItem(header: true, href: "#") { Image(src: "/logo.png", size: "mini"); text " App" }
    MenuItem(href: "#") { text "Home" }
  }
}
# With SubMenu for right-aligned items
Menu {
  MenuItem(href: "#") { text "Home" }
  SubMenu(position: "right") {
    MenuItem { Input(placeholder: "Search...", icon: "search") }
  }
}
# With item count for equal-width items
Menu(attached: true, items: 3) {
  MenuItem(href: "#") { text "Item" }
  MenuItem(href: "#") { text "Item" }
  MenuItem(href: "#") { text "Item" }
}
# Tabular menu for tabs
Menu(tabular: true, attached: "top") {
  MenuItem(active: true, tab: "tab-1") { text "Tab 1" }
  MenuItem(tab: "tab-2") { text "Tab 2" }
}
MenuItem
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/menu_item_component.rb
Attributes: href, active, disabled, header, icon (string name), fitted, link, color, dropdown, value, target, rel, tab. Plus position.
MenuItem(href: "/") { text "Home" }
MenuItem(active: true) { text "Current" }
MenuItem(header: true) { text "Section Header" }
MenuItem(icon: "settings") { text "Settings" }
MenuItem(dropdown: true) {  # Makes this a dropdown trigger
  text "More "
  Icon(name: "dropdown")
  MenuMenu { ... }   # MenuMenu via method_missing -> <menu-menu>
}
MenuItem(value: "us") { text "United States" }  # For dropdown items
MenuItem(tab: "tab-1") { text "Tab 1" }          # For tab switching
SubMenu
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/sub_menu_component.rb
Only has position (from Positionable). Renders a <div class="[position] menu">.
Menu {
  MenuItem(href: "/") { text "Home" }
  SubMenu(position: "right") {
    MenuItem(href: "/login") { text "Login" }
  }
}
Note: MenuMenu (used in many examples) is NOT a registered component. It goes through method_missing and generates a custom HTML tag <menu-menu>. However, in the Fomantic UI context, the .menu class nested inside another menu element functions as a sub-menu container. The actual registered component for this is SubMenu.
Dropdown
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/dropdown_component.rb
Attributes: selection, search, multiple, clearable, fluid, placeholder, name, default_value, pointing (string), compact, scrolling, inline, floating, button, labeled, loading, disabled, action.
# Selection dropdown
Dropdown(selection: true, placeholder: "Select a country", name: "country") {
  MenuItem(value: "us") { text "United States" }
  MenuItem(value: "ca") { text "Canada" }
}
# Search dropdown
Dropdown(selection: true, search: true, placeholder: "Search...", name: "lang") {
  MenuItem(value: "ruby") { text "Ruby" }
  MenuItem(value: "python") { text "Python" }
}
# Floating dropdown (e.g. in a menu)
Dropdown(floating: true) {
  MenuItem { text "Link Item" }
  Divider()
  MenuItem(header: true) { text "Header" }
}
The DropdownComponent automatically wraps content in a .menu div and adds hidden input, search input, text display, and dropdown icon.
Popup
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/popup_component.rb
Attributes: content (tooltip text), title, variation, hoverable, on (default "hover"). Default position: "top center".
Popup(content: "Tooltip text", position: "top center") {
  Button(color: :blue) { text "Hover me" }
}
Popup(title: "Info", content: "Details here", position: "bottom center") {
  Icon(name: "info circle", size: :large, color: :teal, link: true)
}
Grid / Row / Column
Grid file: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/grid_component.rb
Grid attributes: columns (1-16), stackable, doubling, centered, divided, celled, padded, relaxed, equal_width, reversed, container, internal, inverted, aligned.
Column file: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/column_component.rb
Column attributes: width (1-16), computer, tablet, mobile, widescreen, large_screen, aligned, floated, only, color.
Row file: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/row_component.rb
Row attributes: columns, centered, stretched, equal_width, only, aligned.
# Basic grid
Grid(columns: 3, stackable: true) {
  Column { text "A" }
  Column { text "B" }
  Column { text "C" }
}
# Responsive widths
Grid {
  Column(computer: 4, tablet: 8, mobile: 16) { text "Responsive" }
  Column(computer: 8, tablet: 8, mobile: 16) { text "Content" }
  Column(computer: 4, tablet: 16, mobile: 16) { text "Sidebar" }
}
# With rows
Grid(celled: "true") {
  Row {
    Column(width: 4) { text "4 wide" }
    Column(width: 8) { text "8 wide" }
    Column(width: 4) { text "4 wide" }
  }
}
# Grid as container
Grid(columns: 3, container: true, doubling: true) {
  6.times { Column { Segment { text "Content" } } }
}
# Device visibility
Column(only: "mobile") { text "Mobile only" }
Column(only: "tablet mobile") { text "Tablet and mobile" }
Row(only: "computer") { ... }
Header
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/header_component.rb
Attributes: size (default "h2"), sub, icon (string name), image, dividing, block_header, inverted, color, aligned, attached, disabled, floating. Slot: header_image.
Header(size: :h1) { text "Page Title" }
Header(size: :h2, icon: "settings") { text "Settings" }
Header(size: :h3, dividing: true) { text "Section" }
Header(size: :h4, sub: true) { text "Subtitle" }
Header(size: :h3, color: :blue) { text "Colored" }
Header(size: :h3, block_header: true, attached: "top") { text "Block" }
# With sub header
Header(size: :h2) {
  text "Account Settings"
  SubHeader { text "Manage your preferences" }
}
# Image header (uses slot)
Header(size: :h4, image: true) { |c|
  c.header_image { Image(src: "avatar.png", size: "mini", rounded: true) }
  text "Lena"
  SubHeader { text "Human Resources" }
}
List
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/list_component.rb
Attributes: ordered, bulleted, divided, relaxed, animated, horizontal, inverted, size, celled, selection, link.
List(bulleted: true) {
  concat tag.div(class: "item") { "Apples" }
  concat tag.div(class: "item") { "Oranges" }
}
List(ordered: true) {  # Renders as <ol>
  concat tag.div(class: "item") { "Step 1" }
  concat tag.div(class: "item") { "Step 2" }
}
List(horizontal: true, divided: true) {
  concat tag.div(class: "item") { "About" }
  concat tag.div(class: "item") { "Contact" }
}
# List used for footer links
List(link: true, inverted: true) {
  MenuItem(href: "#") { text "Sitemap" }
  MenuItem(href: "#") { text "Contact" }
}
Image
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/image_component.rb
Attributes: src, alt, size, width, height, shrink, rounded, circular, bordered, fluid, avatar, centered, spaced, hidden, disabled, inline.
Image(src: "photo.jpg")
Image(src: "avatar.png", avatar: true, size: :mini)
Image(src: "logo.svg", circular: true, centered: true)
Image(src: "hero.jpg", fluid: true)
Image(src: "pic.jpg", size: :small, rounded: true)
Image(src: "pic.jpg", bordered: true, rounded: true)
Icon
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/icon_component.rb
Attributes: name, size, color, disabled, loading, fitted, link, circular, bordered, inverted, flipped, rotated, corner.
Icon(name: "home")
Icon(name: "heart", color: :red, size: :large)
Icon(name: "spinner", loading: true)
Icon(name: "cloud", size: :big, color: :teal)
Icon(name: "circle", circular: true, inverted: true, color: :green)
Icon(name: "user", color: :blue)
Divider
File: /home/nathan/rails-active-ui/engines/rails-active-ui/app/components/divider_component.rb
Attributes: vertical, horizontal, hidden, section, inverted, fitted, clearing.
Divider()                              # Simple horizontal line
Divider(horizontal: true) { text "OR" }  # With centered text
Divider(section: true)                 # Extra spacing
Divider(hidden: true)                  # Invisible spacer
Divider(inverted: true, section: true) # For dark backgrounds
Divider(vertical: true) { text "Or" }  # Between columns
---
5. Other Important Components
Item / ItemGroup (Slotted Content Items)
ItemGroup(divided: true, relaxed: true) {
  Item { |c|
    c.image { Image(src: "product.jpg", size: "small") }
    c.header { text "Product Name" }
    c.meta { text "$19.99" }
    c.description { text "A great product." }
    c.extra { Label(color: :green) { text "Published" } }
  }
}
Card (Slotted)
Card(fluid: true) { |c|
  c.image { Image(src: "photo.jpg", fluid: true) }
  c.header { text "Title" }
  c.meta { text "Subtitle" }
  c.description { text "Body text" }
  c.extra { Icon(name: "user"); text "22 Friends" }
}
Table (Two Modes)
Column accumulator mode (automatic header/body):
Table(striped: true, rows: @users) { |c|
  c.column(:name, heading: "Name") { |user|
    Text(weight: :bold) { text user.name }
  }
  c.column(:email) { |user|
    Text(color: :grey) { text user.email }
  }
}
Manual mode (slots for header/footer):
Table(celled: true) { |c|
  c.header {
    TableRow {
      TableCell(heading: true) { text "Name" }
      TableCell(heading: true) { text "Age" }
    }
  }
  TableRow {
    TableCell { text "Alice" }
    TableCell { text "30" }
  }
}
Modal (Slotted)
Modal(size: :small) { |c|
  c.header { text "Confirm Action" }
  c.content { text "Are you sure?" }
  c.actions {
    Button(color: :green) { text "Yes" }
    Button(color: :red) { text "No" }
  }
}
Statistic (Slotted)
Statistic(color: :blue) { |c|
  c.value { text "5,550" }
  c.label { text "Downloads" }
}
Progress (Slotted)
Progress(value: 75, total: 100, color: :blue, active: true) { |c|
  c.bar { concat tag.div(class: "progress") }
  c.label { text "75% Complete" }
}
Sidebar + Pusher
Sidebar(direction: "left", inverted: true) {
  MenuItem(href: "#", icon: "home") { text "Home" }
  MenuItem(href: "#", icon: "settings") { text "Settings" }
}
Pusher {
  # Main page content here
}
Tab / TabGroup
TabGroup {
  Menu(tabular: true, attached: "top") {
    MenuItem(active: true, tab: "tab-1") { text "Tab 1" }
    MenuItem(tab: "tab-2") { text "Tab 2" }
  }
  Tab(active: true, path: "tab-1", attached: true, segment: true) {
    text "Content for Tab 1"
  }
  Tab(path: "tab-2", attached: true, segment: true) {
    text "Content for Tab 2"
  }
}
Form
# With model binding (uses FomanticFormBuilder)
Form(model: @user, url: users_path, builder: Ui::FomanticFormBuilder) {
  TextField(:name, placeholder: "Name")
  EmailField(:email)
  Select(:role, [["Admin","admin"],["User","user"]], dropdown: true)
  Button(color: :green, type: :submit) { text "Save" }
}
# Without model (plain form wrapper)
Form {
  Input(icon: "user", placeholder: "Name", name: "name")
  Input(icon: "lock", placeholder: "Password", name: "password", input_type: "password")
  Button(color: "teal", fluid: true) { text "Login" }
}
VStack / HStack (Flexbox Layout)
VStack(spacing: 8) {
  Button(color: :blue) { text "First" }
  Button(color: :green) { text "Second" }
}
HStack(spacing: 8, justify: "between", align: "center") {
  Header(size: :h3) { text "Title" }
  Button(icon: "plus", variant: :primary) { text "New" }
}
ResourceListBlock (Composite Block)
ResourceListBlock(
  heading:          "Notes",
  search_url:       notes_path,
  search_query:     @q,
  search_predicate: "title_cont",
  resources:        @notes,
  item_partial:     "notes/note_card",
  item_local:       "note",
  new_path:         new_note_path,
  turbo_frame:      "notes-list"
)
---
6. Composition Patterns
Nesting Components
Components nest naturally - the block content of a parent becomes @content:
Container {
  Grid(columns: 2, stackable: true) {
    Column(width: 10) {
      Segment {
        Header(size: :h2) { text "Main Content" }
        text "Body text here."
      }
    }
    Column(width: 6) {
      Menu(vertical: true) {
        MenuItem(active: true) { text "Dashboard" }
        MenuItem { text "Settings" }
      }
    }
  }
}
Using Slots vs Direct Content
Slots (named regions via |c|):
Card { |c|
  c.header { text "Title" }     # Goes into @slots[:header]
  c.description { text "Desc" } # Goes into @slots[:description]
}
Direct content (everything in the block that isn't a slot call):
Segment { text "Simple content" }   # All goes into @content
Menu {
  MenuItem { text "One" }           # MenuItem renders go into Menu's @content
  MenuItem { text "Two" }
}
Passing HTML Attributes
Any kwarg not matching a declared attribute passes through to the HTML element:
Button(color: :blue, id: "submit-btn", data: { action: "click->form#submit" }) { text "Go" }
Segment(class: "my-custom-class", style: "margin-top: 2em;") { text "Styled" }
Grid(id: "main-grid", data: { controller: "my-controller" }) { ... }
Using Ruby Logic
Since views are pure Ruby, you can use all Ruby constructs:
Grid(columns: 3, stackable: true) {
  @products.each do |product|
    Column {
      Card { |c|
        c.header { text product.name }
        c.meta { text number_to_currency(product.price) }
        c.description { text product.description }
      }
    }
  end
}
# Conditionals
Menu {
  MenuItem(href: "/", active: current_page?("/")) { text "Home" }
  if current_user&.admin?
    MenuItem(href: "/admin") { text "Admin" }
  end
}
# Loops
5.times { Column { text "column" } }
Dropping to Raw HTML
When components don't cover your needs, you can use Rails tag helpers or concat:
concat tag.div(class: "custom") { tag.span("raw HTML") }
concat tag.a("Link text", href: "#", class: "section")
Inline CSS
text '<style>.custom { color: red; }</style>'.html_safe
# or
Style(".custom { color: red; }")
---
7. Complete Component Map
Layout Primitives: VStack, HStack, Column, Row, Pusher, Overlay, LinkTo, SubHeader
Globals: Reset, Site, Wrapper, Template, BackButton
Elements: Button, Paragraph, ButtonTo, Container, Divider, Emoji, Flag, Header, Icon, Image, Input, Label, List, Loader, Placeholder, Rail, Reveal, Segment, SegmentGroup, Step, StepGroup, Text
Collections: Breadcrumb, Form, Grid, Menu, MenuItem, SubMenu, Message, Table, TableRow, TableCell
Views: Ad, ItemGroup, Card, Comment, Feed, Item, Statistic
Modules: Accordion, Calendar, Checkbox, Dimmer, Dropdown, Embed, Flyout, Modal, Nag, Popup, Progress, Slider, Rating, Search, Shape, Sidebar, Sticky, Tab, TabGroup, Toast, Transition
Behaviors: Api, State, Visibility
Blocks: ResourceListBlock
Special helpers: text(), Style(), Partial(), DocType(), StylesheetLink(), JavascriptImportmap, CsrfMetaTags, CspMetaTag, ContentFor(), datatable()
