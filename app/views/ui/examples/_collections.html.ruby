# ------------------------------------------------------------------
# Breadcrumb
# ------------------------------------------------------------------
Header(size: :h3) { text "Breadcrumb" }
text "A breadcrumb trail for navigation hierarchy."

Segment {
  Breadcrumb(size: :large) {
    concat tag.a("Home", class: "section", href: "#")
    concat tag.div(class: "divider") { "/" }
    concat tag.a("Store", class: "section", href: "#")
    concat tag.div(class: "divider") { "/" }
    concat tag.div(class: "active section") { "T-Shirt" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Breadcrumb(size: :large) {
  concat tag.a("Home", class: "section", href: "#")
  concat tag.div(class: "divider") { "/" }
  concat tag.a("Store", class: "section", href: "#")
  concat tag.div(class: "divider") { "/" }
  concat tag.div(class: "active section") { "T-Shirt" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Form
# ------------------------------------------------------------------
Header(size: :h3) { text "Form" }
text "A styled form with field layout and validation states."

Segment {
  Form {
    concat tag.div(class: "field") {
      safe_join([
        tag.label("Name"),
        tag.input(type: "text", placeholder: "Full Name")
      ])
    }
    concat tag.div(class: "field") {
      safe_join([
        tag.label("Email"),
        tag.input(type: "email", placeholder: "email@example.com")
      ])
    }
    concat tag.div(class: "fields") {
      safe_join([
        tag.div(class: "eight wide field") {
          safe_join([tag.label("First Name"), tag.input(type: "text", placeholder: "First Name")])
        },
        tag.div(class: "eight wide field") {
          safe_join([tag.label("Last Name"), tag.input(type: "text", placeholder: "Last Name")])
        }
      ])
    }
    Button(color: :blue, type: :submit) { text "Submit" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Form {
  concat tag.div(class: "field") {
    safe_join([
      tag.label("Name"),
      tag.input(type: "text", placeholder: "Full Name")
    ])
  }
  concat tag.div(class: "field") {
    safe_join([
      tag.label("Email"),
      tag.input(type: "email", placeholder: "email@example.com")
    ])
  }
  Button(color: :blue, type: :submit) { text "Submit" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Grid (more detailed, already shown in layout)
# ------------------------------------------------------------------
Header(size: :h3) { text "Grid" }
text "A responsive grid system with column width, stacking, and alignment controls."

Segment {
  Grid(columns: 2, stackable: true, celled: "internally") {
    Row(centered: true) {
      Column(width: 6) {
        Segment(basic: true) { text "6 wide centered" }
      }
      Column(width: 6) {
        Segment(basic: true) { text "6 wide centered" }
      }
    }
    Row {
      Column(width: 4) {
        Segment(basic: true) { text "4 wide" }
      }
      Column(width: 8) {
        Segment(basic: true) { text "8 wide" }
      }
      Column(width: 4) {
        Segment(basic: true) { text "4 wide" }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Grid(columns: 2, stackable: true, celled: "internally") {
  Row(centered: true) {
    Column(width: 6) { Segment(basic: true) { text "6 wide" } }
    Column(width: 6) { Segment(basic: true) { text "6 wide" } }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Menu / MenuItem / SubMenu
# ------------------------------------------------------------------
Header(size: :h3) { text "Menu / MenuItem / SubMenu" }
text "Navigation menus with items, submenus, and various styles."

Segment {
  Menu {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
    SubMenu(position: "right") {
      MenuItem {
        Input(placeholder: "Search...", icon: "search")
      }
    }
  }

  Divider(hidden: true)

  Menu(secondary: true, pointing: true) {
    MenuItem(active: true) { text "Active" }
    MenuItem { text "Tab Two" }
    MenuItem { text "Tab Three" }
  }

  Divider(hidden: true)

  Menu(vertical: true, pointing: true) {
    MenuItem(active: true) { text "Dashboard" }
    MenuItem { text "Settings" }
    MenuItem { text "Profile" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Menu {
  MenuItem(active: true, href: "#") { text "Home" }
  MenuItem(href: "#") { text "Messages" }
  MenuItem(href: "#") { text "Friends" }
  SubMenu(position: "right") {
    MenuItem {
      Input(placeholder: "Search...", icon: "search")
    }
  }
}

Menu(secondary: true, pointing: true) {
  MenuItem(active: true) { text "Active" }
  MenuItem { text "Tab Two" }
  MenuItem { text "Tab Three" }
}

Menu(vertical: true, pointing: true) {
  MenuItem(active: true) { text "Dashboard" }
  MenuItem { text "Settings" }
  MenuItem { text "Profile" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Message
# ------------------------------------------------------------------
Header(size: :h3) { text "Message" }
text "Informational messages with type, icon, and dismissible options."

Segment {
  VStack(spacing: 12) {
    Message { text "Default message content." }
    Message(type: :positive) { |c|
      c.header { text "Success!" }
      text "Your action was completed successfully."
    }
    Message(type: :negative) { |c|
      c.header { text "Error" }
      text "Something went wrong. Please try again."
    }
    Message(type: :warning) { text "Warning: This action cannot be undone." }
    Message(type: :info, icon: "inbox") { text "You have new notifications." }
    Message(dismissible: true, color: :blue) { text "Dismissible blue message." }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Message { text "Default message content." }

Message(type: :positive) { |c|
  c.header { text "Success!" }
  text "Your action was completed successfully."
}

Message(type: :negative) { |c|
  c.header { text "Error" }
  text "Something went wrong. Please try again."
}

Message(type: :warning) { text "Warning: This action cannot be undone." }
Message(type: :info, icon: "inbox") { text "You have new notifications." }
Message(dismissible: true, color: :blue) { text "Dismissible blue message." }'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Table / TableRow / TableCell
# ------------------------------------------------------------------
Header(size: :h3) { text "Table / TableRow / TableCell" }
text "Data tables with manual rows or column accumulator mode."

Segment {
  Header(size: :h4) { text "Manual Row Mode" }
  Table(celled: true, striped: true) {
    concat tag.thead {
      tag.tr {
        safe_join([
          tag.th("Name"),
          tag.th("Status"),
          tag.th("Notes")
        ])
      }
    }
    concat tag.tbody {
      capture {
        TableRow(positive: true) {
          TableCell { text "John" }
          TableCell { Icon(name: "checkmark", color: :green); text "Approved" }
          TableCell { text "All good" }
        }
        TableRow {
          TableCell { text "Jane" }
          TableCell { text "Pending" }
          TableCell { text "Awaiting review" }
        }
        TableRow(warning: true) {
          TableCell { text "Bob" }
          TableCell { text "Warning" }
          TableCell { text "Needs attention" }
        }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Table(celled: true, striped: true) {
  concat tag.thead {
    tag.tr {
      safe_join([tag.th("Name"), tag.th("Status"), tag.th("Notes")])
    }
  }
  concat tag.tbody {
    capture {
      TableRow(positive: true) {
        TableCell { text "John" }
        TableCell { Icon(name: "checkmark", color: :green); text "Approved" }
        TableCell { text "All good" }
      }
      TableRow {
        TableCell { text "Jane" }
        TableCell { text "Pending" }
        TableCell { text "Awaiting review" }
      }
    }
  }
}'
  )}
}
