# ------------------------------------------------------------------
# Accordion
# ------------------------------------------------------------------
Header(size: :h3) { text "Accordion" }
text "Collapsible content sections."

Segment {
Accordion {
    concat tag.div(class: "title active") {
      safe_join([tag.i(class: "dropdown icon"), "What is a dog?"])
    }
    concat tag.div(class: "content active") {
      tag.p("A dog is a type of domesticated animal. Known for its loyalty and faithfulness.")
    }
    concat tag.div(class: "title") {
      safe_join([tag.i(class: "dropdown icon"), "What kinds of dogs are there?"])
    }
    concat tag.div(class: "content") {
      tag.p("There are many breeds of dogs. Each breed varies in size and temperament.")
    }
    concat tag.div(class: "title") {
      safe_join([tag.i(class: "dropdown icon"), "How do you acquire a dog?"])
    }
    concat tag.div(class: "content") {
      tag.p("Three common ways: adopt from a shelter, find a breeder, or visit a pet store.")
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Accordion(styled: true, fluid: true) {
  concat tag.div(class: "title active") {
    safe_join([tag.i(class: "dropdown icon"), "What is a dog?"])
  }
  concat tag.div(class: "content active") {
    tag.p("A dog is a type of domesticated animal.")
  }
  concat tag.div(class: "title") {
    safe_join([tag.i(class: "dropdown icon"), "What kinds of dogs are there?"])
  }
  concat tag.div(class: "content") {
    tag.p("There are many breeds of dogs.")
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Calendar
# ------------------------------------------------------------------
Header(size: :h3) { text "Calendar" }
text "A date/time picker powered by Fomantic UI calendar module."

Segment {
  Calendar(type: "date", name: "example_date") {
    concat tag.div(class: "ui input left icon") {
      safe_join([
        tag.i(class: "calendar icon"),
        tag.input(type: "text", placeholder: "Pick a date")
      ])
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Calendar(type: "date", name: "example_date") {
  concat tag.div(class: "ui input left icon") {
    safe_join([
      tag.i(class: "calendar icon"),
      tag.input(type: "text", placeholder: "Pick a date")
    ])
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Checkbox
# ------------------------------------------------------------------
Header(size: :h3) { text "Checkbox" }
text "Styled checkboxes and toggles."

Segment {
  VStack(spacing: 12) {
    Checkbox(label_text: "Accept terms and conditions", name: "terms")
    Checkbox(type: "toggle", label_text: "Enable notifications", name: "notifications")
    Checkbox(type: "slider", label_text: "Dark mode", name: "dark_mode")
    Checkbox(label_text: "Checked by default", name: "checked", checked: true)
    Checkbox(label_text: "Disabled option", name: "disabled", disabled: true)
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Checkbox(label_text: "Accept terms and conditions", name: "terms")
Checkbox(type: "toggle", label_text: "Enable notifications", name: "notifications")
Checkbox(type: "slider", label_text: "Dark mode", name: "dark_mode")
Checkbox(label_text: "Checked by default", name: "checked", checked: true)
Checkbox(label_text: "Disabled option", name: "disabled", disabled: true)'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Dimmer
# ------------------------------------------------------------------
Header(size: :h3) { text "Dimmer" }
text "Dims content to focus attention or indicate loading."

Segment {
  concat tag.div(class: "ui segment", style: "min-height: 100px;") {
    capture {
      Dimmer(active: true) {
        concat tag.div(class: "content") {
          tag.div(class: "center") {
            capture {
              Header(size: :h2, inverted: true, icon: "heart") { text "Dimmed!" }
            }
          }
        }
      }
      text "This content is behind the dimmer."
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Dimmer(active: true) {
  concat tag.div(class: "content") {
    tag.div(class: "center") {
      capture {
        Header(size: :h2, inverted: true, icon: "heart") { text "Dimmed!" }
      }
    }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Dropdown
# ------------------------------------------------------------------
Header(size: :h3) { text "Dropdown" }
text "A selection dropdown with search, multiple, and other options."

Segment {
  VStack(spacing: 12) {
    Dropdown(selection: true, placeholder: "Select a country", name: "country") {
      concat tag.div(class: "default text") { "Select a country" }
      concat tag.i(class: "dropdown icon")
      concat tag.div(class: "menu") {
        capture {
          concat tag.div(class: "item", "data-value": "us") {
            safe_join([tag.i(class: "us flag"), "United States"])
          }
          concat tag.div(class: "item", "data-value": "gb") {
            safe_join([tag.i(class: "gb flag"), "United Kingdom"])
          }
          concat tag.div(class: "item", "data-value": "de") {
            safe_join([tag.i(class: "de flag"), "Germany"])
          }
        }
      }
    }

    Dropdown(selection: true, search: true, placeholder: "Search languages", name: "language") {
      concat tag.div(class: "default text") { "Search languages" }
      concat tag.i(class: "dropdown icon")
      concat tag.div(class: "menu") {
        capture {
          concat tag.div(class: "item", "data-value": "ruby") { "Ruby" }
          concat tag.div(class: "item", "data-value": "python") { "Python" }
          concat tag.div(class: "item", "data-value": "javascript") { "JavaScript" }
          concat tag.div(class: "item", "data-value": "go") { "Go" }
        }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Dropdown(selection: true, placeholder: "Select a country", name: "country") {
  concat tag.div(class: "default text") { "Select a country" }
  concat tag.i(class: "dropdown icon")
  concat tag.div(class: "menu") {
    capture {
      concat tag.div(class: "item", "data-value": "us") {
        safe_join([tag.i(class: "us flag"), "United States"])
      }
      concat tag.div(class: "item", "data-value": "gb") {
        safe_join([tag.i(class: "gb flag"), "United Kingdom"])
      }
    }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Embed
# ------------------------------------------------------------------
Header(size: :h3) { text "Embed" }
text "Embed external content like videos from YouTube or Vimeo."

Segment {
  Embed(source: "youtube", embed_id: "pfdu_gTry8E", placeholder: "https://fomantic-ui.com/images/image-16by9.png")
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Embed(source: "youtube", embed_id: "pfdu_gTry8E", placeholder: "https://fomantic-ui.com/images/image-16by9.png")'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Flyout
# ------------------------------------------------------------------
Header(size: :h3) { text "Flyout" }
text "A slide-out panel from the edge of the screen."

Segment {
  Flyout(direction: "right") { |c|
    c.header { text "Flyout Title" }
    c.content { text "This is the flyout content panel." }
    c.actions {
      Button(color: :green) { text "Approve" }
      Button { text "Cancel" }
    }
  }
  text "Flyout is rendered but hidden by default. Trigger via JS: $(\".ui.flyout\").flyout(\"show\")"
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Flyout(direction: "right") { |c|
  c.header { text "Flyout Title" }
  c.content { text "This is the flyout content panel." }
  c.actions {
    Button(color: :green) { text "Approve" }
    Button { text "Cancel" }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Modal
# ------------------------------------------------------------------
Header(size: :h3) { text "Modal" }
text "A modal dialog for focused user interaction."

Segment {
  Modal(size: :small) { |c|
    c.header { text "Confirm Action" }
    c.content { text "Are you sure you want to proceed with this action?" }
    c.actions {
      Button(color: :green) { text "Yes" }
      Button(color: :red) { text "No" }
    }
  }
  text "Modal is rendered hidden. Trigger via JS: $(\".ui.modal\").modal(\"show\")"
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Modal(size: :small) { |c|
  c.header { text "Confirm Action" }
  c.content { text "Are you sure you want to proceed with this action?" }
  c.actions {
    Button(color: :green) { text "Yes" }
    Button(color: :red) { text "No" }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Nag
# ------------------------------------------------------------------
Header(size: :h3) { text "Nag" }
text "A dismissable notification bar, typically at the top of a page."

Segment {
  Nag(fixed: true) {
    text "We use cookies to ensure you get the best experience. "
    concat tag.a("Learn more", href: "#", style: "color: white; text-decoration: underline;")
    Icon(name: "close")
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Nag(fixed: true) {
  text "We use cookies to ensure you get the best experience. "
  concat tag.a("Learn more", href: "#")
  Icon(name: "close")
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Popup
# ------------------------------------------------------------------
Header(size: :h3) { text "Popup" }
text "A popup tooltip displayed on hover or click."

Segment {
  HStack(spacing: 16) {
    Popup(content: "This is a popup tooltip", position: "top center") {
      Button(color: :blue) { text "Hover me" }
    }

    Popup(title: "Info", content: "Additional details here", position: "bottom center") {
      Icon(name: "info circle", size: :large, color: :teal, link: true)
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Popup(content: "This is a popup tooltip", position: "top center") {
  Button(color: :blue) { text "Hover me" }
}

Popup(title: "Info", content: "Additional details here", position: "bottom center") {
  Icon(name: "info circle", size: :large, color: :teal, link: true)
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Progress
# ------------------------------------------------------------------
Header(size: :h3) { text "Progress" }
text "A progress bar indicating completion status."

Segment {
  VStack(spacing: 16) {
    Progress(value: 75, total: 100, color: :blue, size: :medium, active: true) { |c|
      c.bar {
        concat tag.div(class: "progress")
      }
      c.label { text "75% Complete" }
    }

    Progress(value: 30, total: 100, color: :green, indicating: true) { |c|
      c.bar {
        concat tag.div(class: "progress")
      }
      c.label { text "Uploading files..." }
    }

    Progress(value: 100, total: 100, color: :green) { |c|
      c.bar {
        concat tag.div(class: "progress")
      }
      c.label { text "Done!" }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Progress(value: 75, total: 100, color: :blue, size: :medium, active: true) { |c|
  c.bar {
    concat tag.div(class: "progress")
  }
  c.label { text "75% Complete" }
}

Progress(value: 30, total: 100, color: :green, indicating: true) { |c|
  c.bar { concat tag.div(class: "progress") }
  c.label { text "Uploading files..." }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Slider
# ------------------------------------------------------------------
Header(size: :h3) { text "Slider" }
text "A draggable slider input control."

Segment {
  VStack(spacing: 16) {
    Slider(min: 0, max: 100, value: 40, name: "volume")
    Slider(min: 0, max: 10, value: 5, labeled: true, color: :blue, name: "rating")
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Slider(min: 0, max: 100, value: 40, name: "volume")
Slider(min: 0, max: 10, value: 5, labeled: true, color: :blue, name: "rating")'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Rating
# ------------------------------------------------------------------
Header(size: :h3) { text "Rating" }
text "A star or heart rating input."

Segment {
  HStack(spacing: 24) {
    VStack(spacing: 4) {
      text "Stars:"
      Rating(max_rating: 5, rating: 3, icon: "star", size: :huge)
    }
    VStack(spacing: 4) {
      text "Hearts:"
      Rating(max_rating: 5, rating: 4, icon: "heart", size: :huge)
    }
    VStack(spacing: 4) {
      text "Disabled:"
      Rating(max_rating: 5, rating: 2, disabled: true, size: :large)
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Rating(max_rating: 5, rating: 3, icon: "star", size: :huge)
Rating(max_rating: 5, rating: 4, icon: "heart", size: :huge)
Rating(max_rating: 5, rating: 2, disabled: true, size: :large)'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Search
# ------------------------------------------------------------------
Header(size: :h3) { text "Search" }
text "A search input with autocomplete support."

Segment {
  Search(placeholder: "Search for something...", fluid: true, name: "query")
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Search(placeholder: "Search for something...", fluid: true, name: "query")'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Shape
# ------------------------------------------------------------------
Header(size: :h3) { text "Shape" }
text "Animated shape that flips or rotates between content sides."

Segment {
  Shape(type: "cube") {
    concat tag.div(class: "sides") {
      capture {
        concat tag.div(class: "side active") {
          capture {
            Segment(inverted: true, color: :blue) { text "Side 1" }
          }
        }
        concat tag.div(class: "side") {
          capture {
            Segment(inverted: true, color: :green) { text "Side 2" }
          }
        }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Shape(type: "cube") {
  concat tag.div(class: "sides") {
    capture {
      concat tag.div(class: "side active") {
        capture { Segment(inverted: true, color: :blue) { text "Side 1" } }
      }
      concat tag.div(class: "side") {
        capture { Segment(inverted: true, color: :green) { text "Side 2" } }
      }
    }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Sidebar
# ------------------------------------------------------------------
Header(size: :h3) { text "Sidebar" }
text "A slide-out sidebar menu."

Segment {
  Sidebar(direction: "left", width: "thin") {
    MenuItem(href: "#") {
      Icon(name: "home")
      text "Home"
    }
    MenuItem(href: "#") {
      Icon(name: "gamepad")
      text "Games"
    }
    MenuItem(href: "#") {
      Icon(name: "camera")
      text "Channels"
    }
  }
  text "Sidebar is rendered hidden. Trigger via JS: $(\".ui.sidebar\").sidebar(\"toggle\")"
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Sidebar(direction: "left", width: "thin") {
  MenuItem(href: "#") {
    Icon(name: "home")
    text "Home"
  }
  MenuItem(href: "#") {
    Icon(name: "gamepad")
    text "Games"
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Sticky
# ------------------------------------------------------------------
Header(size: :h3) { text "Sticky" }
text "Content that sticks to the viewport while scrolling within a context."

Segment {
  Sticky(offset: 10) {
    Segment(compact: true) { text "This content can stick on scroll." }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Sticky(offset: 10) {
  Segment(compact: true) { text "This content can stick on scroll." }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Tab
# ------------------------------------------------------------------
Header(size: :h3) { text "Tab" }
text "Tab content panels used with a menu for switching views."

Segment {
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
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'TabGroup {
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
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Toast
# ------------------------------------------------------------------
Header(size: :h3) { text "Toast" }
text "A temporary notification message."

Segment {
  Toast(title: "Success", message: "Your changes have been saved.", type: "success", display_time: 5000, position: "top right")
  Toast(title: "Info", message: "New version available.", type: "info", compact: true, position: "top right")
  text "Toast notifications appear automatically on page load. Configure display_time and position."
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Toast(title: "Success", message: "Your changes have been saved.", type: "success", display_time: 5000, position: "top right")
Toast(title: "Info", message: "New version available.", type: "info", compact: true, position: "top right")'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Transition
# ------------------------------------------------------------------
Header(size: :h3) { text "Transition" }
text "Adds CSS transition animations to content."

Segment {
  Transition(animation: "fade", duration: 500, visible: true) {
    Segment(compact: true) { text "This content has a fade transition." }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Transition(animation: "fade", duration: 500, visible: true) {
  Segment(compact: true) { text "This content has a fade transition." }
}'
  )}
}
