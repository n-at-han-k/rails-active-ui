Grid(container: true) {
  Row {
    Column {
      Header(size: :h1) { text "Bootstrap Migration" }
    }
  }

  # Jumbotron
  Row {
    Column {
      Message {
        Header(size: :h1) { text "Hello, world!" }
        text "This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique."
        Button(color: "blue", href: "#") { text "Learn more \u00BB" }
      }
    }
  }

  # Buttons
  Row {
    Column {
      Header(size: :h1) { text "Buttons" }
      Button(href: "#") { text "Default" }
      Button(variant: "primary", href: "#") { text "Primary" }
      Button(href: "#") { text "Basic" }
      Button(href: "#", color: "green") { text "Success" }
      Button(href: "#", color: "red") { text "Error" }
    }
  }

  # Thumbnails
  Row {
    Column {
      Header(size: :h1) { text "Thumbnails" }
      Divider()
      Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: "small")
    }
  }

  # Dropdown
  Row {
    Column {
      Header(size: :h1) { text "Dropdown" }
      Divider()
      Dropdown(selection: true, placeholder: "Select", name: "selection") {
        MenuItem(value: "male") { text "Male" }
        MenuItem(value: "female") { text "Female" }
      }
      Menu(vertical: true) {
        MenuItem(href: "#", active: true) { text "Friends" }
        MenuItem(href: "#") { text "Messages" }
        MenuItem(dropdown: true) {
          Icon(name: "dropdown")
          text " More"
          MenuMenu {
            MenuItem(href: "#") { text "Edit Profile" }
            MenuItem(href: "#") { text "Choose Language" }
            MenuItem(href: "#") { text "Account Settings" }
          }
        }
      }
    }
  }

  # Badges
  Row {
    Column {
      Header(size: :h1) { text "Badges" }
      Divider()
      Menu(vertical: true) {
        MenuItem {
          text "One "
          Label { text "2" }
        }
        MenuItem {
          text "Two "
          Label { text "2" }
        }
        MenuItem {
          text "Three "
          Label { text "2" }
        }
      }
    }
  }

  # Tables
  Row {
    Column {
      Header(size: :h1) { text "Tables" }
      Grid(columns: 2) {
        Column {
          Table { |c|
            c.header {
              TableRow {
                TableCell(heading: true) { text "Name" }
                TableCell(heading: true) { text "Premium Plan" }
              }
            }
            TableRow {
              TableCell { text "John" }
              TableCell { text "No" }
            }
            TableRow {
              TableCell { text "Jamie" }
              TableCell { text "Yes" }
            }
            TableRow {
              TableCell { text "Jill" }
              TableCell { text "Yes" }
            }
          }
        }

        Column {
          Table(basic: "true") { |c|
            c.header {
              TableRow {
                TableCell(heading: true) { text "Name" }
                TableCell(heading: true) { text "Premium Plan" }
              }
            }
            TableRow {
              TableCell { text "John" }
              TableCell { text "No" }
            }
            TableRow {
              TableCell { text "Jamie" }
              TableCell { text "Yes" }
            }
            TableRow {
              TableCell { text "Jill" }
              TableCell { text "Yes" }
            }
          }
        }

        Column {
          Table(definition: true) { |c|
            c.header {
              TableRow {
                TableCell(heading: true) { text "Name" }
                TableCell(heading: true) { text "Premium Plan" }
              }
            }
            TableRow {
              TableCell { text "John" }
              TableCell { text "No" }
            }
            TableRow {
              TableCell { text "Jamie" }
              TableCell { text "Yes" }
            }
            TableRow {
              TableCell { text "Jill" }
              TableCell { text "Yes" }
            }
          }
        }

        Column {
          Table(basic: "very") { |c|
            c.header {
              TableRow {
                TableCell(heading: true) { text "Name" }
                TableCell(heading: true) { text "Premium Plan" }
              }
            }
            TableRow {
              TableCell { text "John" }
              TableCell { text "No" }
            }
            TableRow {
              TableCell { text "Jamie" }
              TableCell { text "Yes" }
            }
            TableRow {
              TableCell { text "Jill" }
              TableCell { text "Yes" }
            }
          }
        }

        Column(width: 16) {
          Table(celled: true, structured: true) { |c|
            c.header {
              TableRow {
                TableCell(heading: true, rowspan: 2) { text "Name" }
                TableCell(heading: true, rowspan: 2) { text "Type" }
                TableCell(heading: true, rowspan: 2) { text "Files" }
                TableCell(heading: true, colspan: 3) { text "Languages" }
              }
              TableRow {
                TableCell(heading: true) { text "Ruby" }
                TableCell(heading: true) { text "JavaScript" }
                TableCell(heading: true) { text "Python" }
              }
            }
            TableRow {
              TableCell { text "Alpha Team" }
              TableCell { text "Project 1" }
              TableCell { text "2" }
              TableCell { Icon(name: "checkmark", size: "large", color: "green") }
              TableCell {}
              TableCell {}
            }
            TableRow {
              TableCell(rowspan: 3) { text "Beta Team" }
              TableCell { text "Project 1" }
              TableCell { text "52" }
              TableCell { Icon(name: "checkmark", size: "large", color: "green") }
              TableCell {}
              TableCell {}
            }
            TableRow {
              TableCell { text "Project 2" }
              TableCell { text "12" }
              TableCell {}
              TableCell { Icon(name: "checkmark", size: "large", color: "green") }
              TableCell {}
            }
            TableRow {
              TableCell { text "Project 3" }
              TableCell { text "21" }
              TableCell { Icon(name: "checkmark", size: "large", color: "green") }
              TableCell {}
              TableCell {}
            }
          }
        }
      }
    }
  }

  # Alerts
  Row {
    Column {
      Header(size: :h1) { text "Alerts" }
      Divider()
      Message(type: "positive") { text "Well done! You successfully read this important alert message." }
      Message(type: "info") { text "Heads up! This alert needs your attention, but it's not super important." }
      Message(type: "warning") { text "Warning! Best check yo self, you're not looking too good." }
      Message(type: "error") { text "Oh snap! Change a few things up and try submitting again." }
    }
  }

  # List groups
  Row {
    Column {
      Header(size: :h1) { text "List groups" }
      Divider()
      Grid(columns: 3) {
        Column {
          SegmentGroup {
            Segment { text "Cras justo odio" }
            Segment { text "Dapibus ac facilisis in" }
            Segment { text "Morbi leo risus" }
            Segment { text "Porta ac consectetur ac" }
            Segment { text "Vestibulum at eros" }
          }
        }

        Column {
          Menu(vertical: true, fluid: true) {
            MenuItem(href: "#") { text "Cras justo odio" }
            MenuItem(href: "#") { text "Vestibulum at eros" }
          }
        }

        Column {
          Menu(vertical: true, fluid: true) {
            MenuItem(href: "#") {
              Header(size: "medium") { text "List group item heading" }
              text "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit."
            }
            MenuItem(href: "#") {
              Header(size: "medium") { text "List group item heading" }
              text "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit."
            }
            MenuItem(href: "#") {
              Header(size: "medium") { text "List group item heading" }
              text "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit."
            }
          }
        }
      }
    }
  }

  # Panels
  Row {
    Column {
      Header(size: :h1) { text "Panels" }
      Divider()
      Grid(columns: 3) {
        Column {
          SegmentGroup {
            Segment(color: "red") { text "One" }
            Segment(color: "blue") { text "Two" }
            Segment(color: "green") { text "Three" }
          }
        }

        Column {
          SegmentGroup {
            Segment(raised: true) { text "One" }
            Segment { text "Two" }
            Segment { text "Three" }
          }
        }

        Column {
          SegmentGroup {
            Segment(stacked: true) { text "One" }
            Segment { text "Two" }
            Segment { text "Three" }
          }
        }

        Column {
          Message(type: "error", attached: true) { text "Error" }
          Segment(attached: true) { text "Panel content" }
        }

        Column {
          Message(type: "info", attached: true) { text "Info" }
          Segment(attached: true) { text "Panel content" }
        }

        Column {
          Message(type: "success", attached: true) { text "Success" }
          Segment(attached: true) { text "Panel content" }
        }

        Column {
          Header(size: :h4, inverted: true, attached: "top") { text "Header" }
          Segment(attached: true) { text "Panel content" }
        }

        Column {
          Header(size: :h4, block_header: true, attached: "top") { text "Header" }
          Segment(attached: true) { text "Panel content" }
        }

        Column {
          Header(size: :h4, attached: "top") { text "Header" }
          Segment(attached: true) { text "Panel content" }
        }
      }
    }
  }

  # Wells
  Row {
    Column {
      Header(size: :h1) { text "Wells" }
      Divider()
      Segment { text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
      Segment(secondary: true) { text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
      Segment(tertiary: true) { text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
      Segment(inverted: true) { text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
      Segment(inverted: true, secondary: true) { text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
      Segment(inverted: true, tertiary: true) { text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
    }
  }
}
