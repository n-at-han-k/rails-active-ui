# Admin Dashboard — translated from admin-dashboard.html

# -- Sidebar --
Sidebar(direction: "left", inverted: true) {
  MenuItem(header: true) {
    text "General"
    MenuMenu {
      MenuItem(icon: "tachometer alternate") { text "Dashboard" }
    }
  }

  MenuItem(header: true) {
    text "Administration"
    MenuMenu {
      MenuItem(icon: "cogs") { text "Settings" }
      MenuItem(icon: "users") { text "Team" }
    }
  }

  MenuItem(href: "#", icon: "chart line") { text "Charts" }
  MenuItem(icon: "lightbulb") { text "Apps" }

  MenuItem(header: true) {
    text "Other"
    MenuMenu {
      MenuItem(href: "#", icon: "envelope") { text "Messages" }
      MenuItem(href: "#", icon: "calendar alternate") { text "Calendar" }
    }
  }

  MenuItem {
    Input(size: "mini", action: true, placeholder: "Search...") {
      Button(size: "mini", icon: "search")
    }
  }

  Segment(inverted: true) {
    Progress(value: 54, total: 100, color: "olive", size: "tiny", inverted: true) { |c|
      c.bar {}
      c.label { text "Monthly Bandwidth" }
    }
    Progress(value: 78, total: 100, color: "teal", size: "tiny", inverted: true) { |c|
      c.bar {}
      c.label { text "Disk Usage" }
    }
  }
}

# -- Top Nav --
Menu(fixed: "top", inverted: true) {
  MenuMenu(position: "left") {
    MenuItem(href: "#") { Icon(name: "sidebar") }
    MenuItem(href: "#") {
      Header(size: "h4") { text "Semantic UI" }
    }
  }

  MenuMenu(position: "right") {
    MenuItem(href: "#") { Icon(name: "bell") }
    Dropdown {
      Icon(name: "user circle")
      MenuMenu {
        MenuItem(href: "#", icon: "info circle") { text "Profile" }
        MenuItem(href: "#", icon: "wrench") { text "Settings" }
        MenuItem(href: "#", icon: "sign-out") { text "Logout" }
      }
    }
  }
}

# -- Main Content --
Pusher {
  # -- Stat Cards Row --
  Grid(stackable: true, padded: "true") {
    Column(computer: 4, tablet: 8, mobile: 16) {
      Card(fluid: true) { |c|
        c.header { Header(size: "h3", color: "red") { text "3958" } }
        c.meta { text "orders" }
        c.description { text "Elliot requested permission to view your contact details" }
        c.extra { Button(color: "red") { text "More Info" } }
      }
    }

    Column(computer: 4, tablet: 8, mobile: 16) {
      Card(fluid: true) { |c|
        c.header { Header(size: "h3", color: "green") { text "57.6%" } }
        c.meta { text "Time" }
        c.description { text "Elliot requested permission to view your contact details" }
        c.extra { Button(color: "green") { text "More Info" } }
      }
    }

    Column(computer: 4, tablet: 8, mobile: 16) {
      Card(fluid: true) { |c|
        c.header { Header(size: "h3", color: "teal") { text "3112" } }
        c.meta { text "Saves" }
        c.description { text "Elliot requested permission to view your contact details" }
        c.extra { Button(color: "teal") { text "More Info" } }
      }
    }

    Column(computer: 4, tablet: 8, mobile: 16) {
      Card(fluid: true) { |c|
        c.header { Header(size: "h3", color: "purple") { text "9805" } }
        c.meta { text "Views" }
        c.description { text "Elliot requested permission to view your contact details" }
        c.extra { Button(color: "purple") { text "More Info" } }
      }
    }
  }

  # -- Git Repository Table --
  Grid(stackable: true, padded: "true") {
    Column {
      Table(celled: true, striped: true) { |c|
        c.header {
          TableRow {
            TableCell(heading: true, colspan: 3) { text "Git Repository" }
          }
        }
        TableRow {
          TableCell(collapsing: true) { Icon(name: "folder"); text " node_modules" }
          TableCell { text "Initial commit" }
          TableCell(aligned: "right", collapsing: true) { text "10 hours ago" }
        }
        TableRow {
          TableCell { Icon(name: "folder"); text " test" }
          TableCell { text "Initial commit" }
          TableCell(aligned: "right") { text "10 hours ago" }
        }
        TableRow {
          TableCell { Icon(name: "folder"); text " build" }
          TableCell { text "Initial commit" }
          TableCell(aligned: "right") { text "10 hours ago" }
        }
        TableRow {
          TableCell { Icon(name: "file outline"); text " package.json" }
          TableCell { text "Initial commit" }
          TableCell(aligned: "right") { text "10 hours ago" }
        }
        TableRow {
          TableCell { Icon(name: "file outline"); text " Gruntfile.js" }
          TableCell { text "Initial commit" }
          TableCell(aligned: "right") { text "10 hours ago" }
        }
      }
    }
  }

  # -- Statistics Row --
  Grid(stackable: true, padded: "true") {
    Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
      Statistic(color: "teal") { |c|
        c.value { text "5,550" }
        c.label { text "Downloads" }
      }
    }

    Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
      Statistic(color: "purple") { |c|
        c.value { text "50+" }
        c.label { text "Developers" }
      }
    }

    Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
      Statistic(color: "green") { |c|
        c.value { text "800+" }
        c.label { text "Commits" }
      }
    }

    Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
      Statistic(color: "purple") { |c|
        c.value { text "1000+" }
        c.label { text "Cups of Coffee" }
      }
    }
  }
}
