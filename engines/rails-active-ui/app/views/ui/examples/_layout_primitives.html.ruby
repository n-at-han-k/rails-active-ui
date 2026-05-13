# ------------------------------------------------------------------
# VStack
# ------------------------------------------------------------------
Header(size: :h3) { text "VStack" }
text "Vertical stack layout using flexbox column."

Segment {
  VStack(spacing: 8) {
    Button(color: :blue) { text "First" }
    Button(color: :green) { text "Second" }
    Button(color: :orange) { text "Third" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'VStack(spacing: 8) {
  Button(color: :blue) { text "First" }
  Button(color: :green) { text "Second" }
  Button(color: :orange) { text "Third" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# HStack
# ------------------------------------------------------------------
Header(size: :h3) { text "HStack" }
text "Horizontal stack layout using flexbox row."

Segment {
  HStack(spacing: 8, align: "center") {
    Button(color: :blue) { text "Left" }
    Button(color: :green) { text "Center" }
    Button(color: :orange) { text "Right" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'HStack(spacing: 8, align: "center") {
  Button(color: :blue) { text "Left" }
  Button(color: :green) { text "Center" }
  Button(color: :orange) { text "Right" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Grid, Row, Column
# ------------------------------------------------------------------
Header(size: :h3) { text "Grid / Row / Column" }
text "Responsive grid system with rows and columns."

Segment {
  Grid(columns: 3, stackable: true, divided: "vertically") {
    Row {
      Column(width: 4) {
        Segment(color: :blue) { text "4 wide" }
      }
      Column(width: 8) {
        Segment(color: :green) { text "8 wide" }
      }
      Column(width: 4) {
        Segment(color: :orange) { text "4 wide" }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Grid(columns: 3, stackable: true, divided: "vertically") {
  Row {
    Column(width: 4) {
      Segment(color: :blue) { text "4 wide" }
    }
    Column(width: 8) {
      Segment(color: :green) { text "8 wide" }
    }
    Column(width: 4) {
      Segment(color: :orange) { text "4 wide" }
    }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Pusher
# ------------------------------------------------------------------
Header(size: :h3) { text "Pusher" }
text "A content wrapper typically used with Sidebar to push page content."

Segment {
  Pusher {
    Segment { text "Content inside a Pusher" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Pusher {
  Segment { text "Content inside a Pusher" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Overlay
# ------------------------------------------------------------------
Header(size: :h3) { text "Overlay" }
text "An overlay div typically used as a dimmer backdrop."

Segment {
  Overlay {
    text "Overlay content"
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Overlay {
  text "Overlay content"
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Link
# ------------------------------------------------------------------
Header(size: :h3) { text "Link" }
text "A styled anchor element."

Segment {
  LinkTo(href: "#", css_class: "ui") { text "Click this link" }
  text " | "
  LinkTo(href: "https://example.com", target: "_blank", rel: "noopener") { text "External link" }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'LinkTo(href: "#", css_class: "ui") { text "Click this link" }
LinkTo(href: "https://example.com", target: "_blank", rel: "noopener") { text "External link" }'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# SubHeader
# ------------------------------------------------------------------
Header(size: :h3) { text "SubHeader" }
text "A sub header element used within headers."

Segment {
  Header(size: :h2) {
    text "Account Settings"
    SubHeader { text "Manage your preferences" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Header(size: :h2) {
  text "Account Settings"
  SubHeader { text "Manage your preferences" }
}'
  )}
}
