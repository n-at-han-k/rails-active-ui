Wrapper(style: "contain: layout style;") {
  # Admin Dashboard — translated from admin-dashboard.html
  
  # -- Sidebar --
  Sidebar(direction: "left", inverted: true) {
    MenuItem(header: true) {
      text "General"
      MenuMenu {
        MenuItem(icon: "tachometer alternate") { "Dashboard" }
      }
    }
  
    MenuItem(header: true) {
      text "Administration"
      MenuMenu {
        MenuItem(icon: "cogs") { "Settings" }
        MenuItem(icon: "users") { "Team" }
      }
    }
  
    MenuItem(href: "#", icon: "chart line") { "Charts" }
    MenuItem(icon: "lightbulb") { "Apps" }
  
    MenuItem(header: true) {
      text "Other"
      MenuMenu {
        MenuItem(href: "#", icon: "envelope") { "Messages" }
        MenuItem(href: "#", icon: "calendar alternate") { "Calendar" }
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
        c.label { "Monthly Bandwidth" }
      }
      Progress(value: 78, total: 100, color: "teal", size: "tiny", inverted: true) { |c|
        c.bar {}
        c.label { "Disk Usage" }
      }
    }
  }
  
  # -- Top Nav --
  Menu(fixed: "top", inverted: true) {
    MenuMenu(position: "left") {
      MenuItem(href: "#") { Icon(name: "sidebar") }
      MenuItem(href: "#") {
        Header(size: "h4") { "Semantic UI" }
      }
    }
  
    MenuMenu(position: "right") {
      MenuItem(href: "#") { Icon(name: "bell") }
      Dropdown {
        Icon(name: "user circle")
        MenuMenu {
          MenuItem(href: "#", icon: "info circle") { "Profile" }
          MenuItem(href: "#", icon: "wrench") { "Settings" }
          MenuItem(href: "#", icon: "sign-out") { "Logout" }
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
          c.header { Header(size: "h3", color: "red") { "3958" } }
          c.meta { "orders" }
          c.description { "Elliot requested permission to view your contact details" }
          c.extra { Button(color: "red") { "More Info" } }
        }
      }
  
      Column(computer: 4, tablet: 8, mobile: 16) {
        Card(fluid: true) { |c|
          c.header { Header(size: "h3", color: "green") { "57.6%" } }
          c.meta { "Time" }
          c.description { "Elliot requested permission to view your contact details" }
          c.extra { Button(color: "green") { "More Info" } }
        }
      }
  
      Column(computer: 4, tablet: 8, mobile: 16) {
        Card(fluid: true) { |c|
          c.header { Header(size: "h3", color: "teal") { "3112" } }
          c.meta { "Saves" }
          c.description { "Elliot requested permission to view your contact details" }
          c.extra { Button(color: "teal") { "More Info" } }
        }
      }
  
      Column(computer: 4, tablet: 8, mobile: 16) {
        Card(fluid: true) { |c|
          c.header { Header(size: "h3", color: "purple") { "9805" } }
          c.meta { "Views" }
          c.description { "Elliot requested permission to view your contact details" }
          c.extra { Button(color: "purple") { "More Info" } }
        }
      }
    }
  
    # -- Git Repository Table --
    Grid(stackable: true, padded: "true") {
      Column {
        Table(celled: true, striped: true) { |c|
          c.header {
            TableRow {
              TableCell(heading: true, colspan: 3) { "Git Repository" }
            }
          }
          TableRow {
            TableCell(collapsing: true) { Icon(name: "folder"); text " node_modules" }
            TableCell { "Initial commit" }
            TableCell(aligned: "right", collapsing: true) { "10 hours ago" }
          }
          TableRow {
            TableCell { Icon(name: "folder"); text " test" }
            TableCell { "Initial commit" }
            TableCell(aligned: "right") { "10 hours ago" }
          }
          TableRow {
            TableCell { Icon(name: "folder"); text " build" }
            TableCell { "Initial commit" }
            TableCell(aligned: "right") { "10 hours ago" }
          }
          TableRow {
            TableCell { Icon(name: "file outline"); text " package.json" }
            TableCell { "Initial commit" }
            TableCell(aligned: "right") { "10 hours ago" }
          }
          TableRow {
            TableCell { Icon(name: "file outline"); text " Gruntfile.js" }
            TableCell { "Initial commit" }
            TableCell(aligned: "right") { "10 hours ago" }
          }
        }
      }
    }
  
    # -- Statistics Row --
    Grid(stackable: true, padded: "true") {
      Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
        Statistic(color: "teal") { |c|
          c.value { "5,550" }
          c.label { "Downloads" }
        }
      }
  
      Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
        Statistic(color: "purple") { |c|
          c.value { "50+" }
          c.label { "Developers" }
        }
      }
  
      Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
        Statistic(color: "green") { |c|
          c.value { "800+" }
          c.label { "Commits" }
        }
      }
  
      Column(computer: 4, tablet: 8, mobile: 16, aligned: "center") {
        Statistic(color: "purple") { |c|
          c.value { "1000+" }
          c.label { "Cups of Coffee" }
        }
      }
    }
  }
}
