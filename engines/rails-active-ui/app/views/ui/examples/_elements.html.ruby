# ------------------------------------------------------------------
# Button
# ------------------------------------------------------------------
Header(size: :h3) { text "Button" }
text "A standard button with color, icon, size, and variant options."

Segment {
  HStack(spacing: 8) {
    Button(color: :blue) { text "Primary" }
    Button(color: :green, icon: "check") { text "Approve" }
    Button(variant: :basic) { text "Basic" }
    Button(color: :red, size: :small) { text "Small Red" }
    Button(loading: true, color: :blue) { text "Loading" }
    Button(disabled: true) { text "Disabled" }
    Button(inverted: true, color: :blue) { text "Inverted" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'HStack(spacing: 8) {
  Button(color: :blue) { text "Primary" }
  Button(color: :green, icon: "check") { text "Approve" }
  Button(variant: :basic) { text "Basic" }
  Button(color: :red, size: :small) { text "Small Red" }
  Button(loading: true, color: :blue) { text "Loading" }
  Button(disabled: true) { text "Disabled" }
  Button(inverted: true, color: :blue) { text "Inverted" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Container
# ------------------------------------------------------------------
Header(size: :h3) { text "Container" }
text "A container constrains content width for readability."

Segment {
  Container(text: true) {
    text "This content is inside a text container, which constrains width for optimal reading."
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Container(text: true) {
  text "This content is inside a text container."
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Divider
# ------------------------------------------------------------------
Header(size: :h3) { text "Divider" }
text "A divider visually separates content sections."

Segment {
  text "Content above"
  Divider()
  text "Content below"
  Divider(horizontal: true) { text "OR" }
  text "More content"
  Divider(hidden: true)
  text "After a hidden divider (spacing only)"
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'text "Content above"
Divider()
text "Content below"
Divider(horizontal: true) { text "OR" }
text "More content"
Divider(hidden: true)
text "After a hidden divider (spacing only)"'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Emoji
# ------------------------------------------------------------------
Header(size: :h3) { text "Emoji" }
text "Renders an emoji by name."

Segment {
  HStack(spacing: 8) {
    Emoji(name: "smile")
    Emoji(name: "heart")
    Emoji(name: "rocket")
    Emoji(name: "thumbsup")
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Emoji(name: "smile")
Emoji(name: "heart")
Emoji(name: "rocket")
Emoji(name: "thumbsup")'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Flag
# ------------------------------------------------------------------
Header(size: :h3) { text "Flag" }
text "Renders a country flag icon."

Segment {
  HStack(spacing: 8) {
    Flag(country: "us")
    Flag(country: "gb")
    Flag(country: "de")
    Flag(country: "jp")
    Flag(country: "br")
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Flag(country: "us")
Flag(country: "gb")
Flag(country: "de")
Flag(country: "jp")
Flag(country: "br")'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Header
# ------------------------------------------------------------------
Header(size: :h3) { text "Header" }
text "Page and section headers with various sizes, icons, and styles."

Segment {
  Header(size: :h1) { text "H1 Header" }
  Header(size: :h2, icon: "settings") { text "H2 with Icon" }
  Header(size: :h3, dividing: true) { text "H3 Dividing" }
  Header(size: :h4, sub: true) { text "H4 Sub Header" }
  Header(size: :h3, color: :blue) { text "Colored Header" }
  Header(size: :h3, block_header: true, attached: "top") { text "Block Attached Header" }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Header(size: :h1) { text "H1 Header" }
Header(size: :h2, icon: "settings") { text "H2 with Icon" }
Header(size: :h3, dividing: true) { text "H3 Dividing" }
Header(size: :h4, sub: true) { text "H4 Sub Header" }
Header(size: :h3, color: :blue) { text "Colored Header" }
Header(size: :h3, block_header: true, attached: "top") { text "Block Attached Header" }'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Icon
# ------------------------------------------------------------------
Header(size: :h3) { text "Icon" }
text "Icons from the Fomantic UI icon set."

Segment {
  HStack(spacing: 12) {
    Icon(name: "home")
    Icon(name: "user", color: :blue)
    Icon(name: "heart", color: :red, size: :large)
    Icon(name: "spinner", loading: true)
    Icon(name: "cloud", size: :big, color: :teal)
    Icon(name: "circle", circular: true, inverted: true, color: :green)
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Icon(name: "home")
Icon(name: "user", color: :blue)
Icon(name: "heart", color: :red, size: :large)
Icon(name: "spinner", loading: true)
Icon(name: "cloud", size: :big, color: :teal)
Icon(name: "circle", circular: true, inverted: true, color: :green)'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Image
# ------------------------------------------------------------------
Header(size: :h3) { text "Image" }
text "Styled image element with size, shape, and layout options."

Segment {
  HStack(spacing: 12, align: "center") {
    Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: :small)
    Image(src: "https://fomantic-ui.com/images/avatar/large/elliot.jpg", size: :tiny, circular: true)
    Image(src: "https://fomantic-ui.com/images/avatar/large/stevie.jpg", size: :tiny, bordered: true, rounded: true)
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: :small)
Image(src: "https://fomantic-ui.com/images/avatar/large/elliot.jpg", size: :tiny, circular: true)
Image(src: "https://fomantic-ui.com/images/avatar/large/stevie.jpg", size: :tiny, bordered: true, rounded: true)'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Input
# ------------------------------------------------------------------
Header(size: :h3) { text "Input" }
text "A styled input field with icon, label, action, and state options."

Segment {
  VStack(spacing: 12) {
    Input(placeholder: "Search...", icon: "search")
    Input(placeholder: "Loading...", icon: "search", loading: true)
    Input(placeholder: "Enter email", icon: "at", icon_position: "left")
    Input(placeholder: "Disabled input", disabled: true)
    Input(placeholder: "Error state", error: true)
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Input(placeholder: "Search...", icon: "search")
Input(placeholder: "Loading...", icon: "search", loading: true)
Input(placeholder: "Enter email", icon: "at", icon_position: "left")
Input(placeholder: "Disabled input", disabled: true)
Input(placeholder: "Error state", error: true)'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Label
# ------------------------------------------------------------------
Header(size: :h3) { text "Label" }
text "Labels highlight content with color, pointing, and style variations."

Segment {
  HStack(spacing: 8) {
    Label(color: :blue) { text "Blue" }
    Label(color: :red, icon: "mail") { text "23 Unread" }
    Label(tag_style: true, color: :teal) { text "Tag" }
    Label(circular: true, color: :green) { text "1" }
    Label(basic: true) { text "Basic" }
    Label(ribbon: true, color: :purple) { text "Ribbon" }
    Label(detail: "214") { text "Friends" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Label(color: :blue) { text "Blue" }
Label(color: :red, icon: "mail") { text "23 Unread" }
Label(tag_style: true, color: :teal) { text "Tag" }
Label(circular: true, color: :green) { text "1" }
Label(basic: true) { text "Basic" }
Label(ribbon: true, color: :purple) { text "Ribbon" }
Label(detail: "214") { text "Friends" }'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# List
# ------------------------------------------------------------------
Header(size: :h3) { text "List" }
text "Lists display related content in a vertical or horizontal sequence."

Segment {
  List(bulleted: true) {
    concat tag.div(class: "item") { "Apples" }
    concat tag.div(class: "item") { "Oranges" }
    concat tag.div(class: "item") { "Bananas" }
  }
  Divider(hidden: true)
  List(ordered: true) {
    concat tag.div(class: "item") { "First step" }
    concat tag.div(class: "item") { "Second step" }
    concat tag.div(class: "item") { "Third step" }
  }
  Divider(hidden: true)
  List(horizontal: true, divided: true) {
    concat tag.div(class: "item") { "About" }
    concat tag.div(class: "item") { "Contact" }
    concat tag.div(class: "item") { "Privacy" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'List(bulleted: true) {
  concat tag.div(class: "item") { "Apples" }
  concat tag.div(class: "item") { "Oranges" }
  concat tag.div(class: "item") { "Bananas" }
}

List(ordered: true) {
  concat tag.div(class: "item") { "First step" }
  concat tag.div(class: "item") { "Second step" }
  concat tag.div(class: "item") { "Third step" }
}

List(horizontal: true, divided: true) {
  concat tag.div(class: "item") { "About" }
  concat tag.div(class: "item") { "Contact" }
  concat tag.div(class: "item") { "Privacy" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Loader
# ------------------------------------------------------------------
Header(size: :h3) { text "Loader" }
text "A loading spinner indicator."

Segment {
  concat tag.div(style: "height: 80px; position: relative;") {
    capture {
      Loader(active: true, inline: true, centered: true)
    }
  }
  Divider(hidden: true)
  HStack(spacing: 16) {
    Loader(active: true, inline: true, size: :small)
    Loader(active: true, inline: true, size: :medium)
    Loader(active: true, inline: true, size: :large)
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Loader(active: true, inline: true, centered: true)
Loader(active: true, inline: true, size: :small)
Loader(active: true, inline: true, size: :medium)
Loader(active: true, inline: true, size: :large)'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Placeholder
# ------------------------------------------------------------------
Header(size: :h3) { text "Placeholder" }
text "Placeholder content used as a loading skeleton."

Segment {
  Placeholder { |c|
    c.header_slot {
      concat tag.div(class: "line")
      concat tag.div(class: "line")
    }
    c.paragraph {
      concat tag.div(class: "line")
      concat tag.div(class: "line")
      concat tag.div(class: "line")
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Placeholder { |c|
  c.header_slot {
    concat tag.div(class: "line")
    concat tag.div(class: "line")
  }
  c.paragraph {
    concat tag.div(class: "line")
    concat tag.div(class: "line")
    concat tag.div(class: "line")
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Rail
# ------------------------------------------------------------------
Header(size: :h3) { text "Rail" }
text "Attached content rail, positioned to the left or right of content."

Segment {
  concat tag.div(style: "position: relative; min-height: 60px; padding: 0 200px;") {
    capture {
      Rail(position: "left", close: true) {
        Segment { text "Left rail" }
      }
      text "Main content area with rails on each side."
      Rail(position: "right", close: true) {
        Segment { text "Right rail" }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Rail(position: "left", close: true) {
  Segment { text "Left rail" }
}
text "Main content area"
Rail(position: "right", close: true) {
  Segment { text "Right rail" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Reveal
# ------------------------------------------------------------------
Header(size: :h3) { text "Reveal" }
text "Shows hidden content on hover with a transition effect."

Segment {
  Reveal(type: "fade") { |c|
    c.visible {
      Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: :small)
    }
    c.hidden {
      Image(src: "https://fomantic-ui.com/images/avatar/large/elliot.jpg", size: :small)
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Reveal(type: "fade") { |c|
  c.visible {
    Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: :small)
  }
  c.hidden {
    Image(src: "https://fomantic-ui.com/images/avatar/large/elliot.jpg", size: :small)
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Segment
# ------------------------------------------------------------------
Header(size: :h3) { text "Segment" }
text "A container for grouping related content."

Segment {
  VStack(spacing: 12) {
    Segment { text "Default segment" }
    Segment(raised: true) { text "Raised segment" }
    Segment(color: :blue) { text "Blue colored segment" }
    Segment(inverted: true, color: :green) { text "Inverted green segment" }
    Segment(compact: true) { text "Compact segment" }
    Segment(secondary: true) { text "Secondary segment" }
    Segment(tertiary: true) { text "Tertiary segment" }
    Segment(loading: true) { text "Loading segment" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Segment { text "Default segment" }
Segment(raised: true) { text "Raised segment" }
Segment(color: :blue) { text "Blue colored segment" }
Segment(inverted: true, color: :green) { text "Inverted green segment" }
Segment(compact: true) { text "Compact segment" }
Segment(secondary: true) { text "Secondary segment" }
Segment(loading: true) { text "Loading segment" }'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# SegmentGroup
# ------------------------------------------------------------------
Header(size: :h3) { text "SegmentGroup" }
text "Groups multiple segments together."

Segment {
  SegmentGroup {
    Segment { text "First segment" }
    Segment { text "Second segment" }
    Segment { text "Third segment" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'SegmentGroup {
  Segment { text "First segment" }
  Segment { text "Second segment" }
  Segment { text "Third segment" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Step
# ------------------------------------------------------------------
Header(size: :h3) { text "Step / StepGroup" }
text "Steps show the completion status of an activity."

Segment {
  StepGroup(ordered: true) {
    Step(completed: true, title: "Shipping", description: "Choose delivery method")
    Step(active: true, title: "Billing", description: "Enter billing info")
    Step(disabled: true, title: "Confirm", description: "Verify order details")
  }
  Divider(hidden: true)
  StepGroup {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
    Step(icon: "info", title: "Confirm Order")
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'StepGroup(ordered: true) {
  Step(completed: true, title: "Shipping", description: "Choose delivery method")
  Step(active: true, title: "Billing", description: "Enter billing info")
  Step(disabled: true, title: "Confirm", description: "Verify order details")
}

StepGroup {
  Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
  Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
  Step(icon: "info", title: "Confirm Order")
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Text
# ------------------------------------------------------------------
Header(size: :h3) { text "Text" }
text "Inline text with style, size, weight, and color options."

Segment {
  VStack(spacing: 8) {
    Text(size: :huge, color: :blue) { text "Huge blue text" }
    Text(weight: :bold) { text "Bold text" }
    Text(color: :red, size: :large) { text "Large red text" }
    Text(style: "font-style: italic;") { text "Italic styled text" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Text(size: :huge, color: :blue) { text "Huge blue text" }
Text(weight: :bold) { text "Bold text" }
Text(color: :red, size: :large) { text "Large red text" }
Text(style: "font-style: italic;") { text "Italic styled text" }'
  )}
}
