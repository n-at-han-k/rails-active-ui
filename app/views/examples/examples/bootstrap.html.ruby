Wrapper(style: "contain: layout style;") {
  Grid(container: true) {
    Row {
      Column {
        Header(size: :h1) { "Bootstrap Migration" }
      }
    }
  
    # Jumbotron
    Row {
      Column {
        Message {
          Header(size: :h1) { "Hello, world!" }
          text "This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique."
          Button(color: "blue", href: "#") { "Learn more \u00BB" }
        }
      }
    }
  
    # Buttons
    Row {
      Column {
        Header(size: :h1) { "Buttons" }
        Button(href: "#") { "Default" }
        Button(variant: "primary", href: "#") { "Primary" }
        Button(href: "#") { "Basic" }
        Button(href: "#", color: "green") { "Success" }
        Button(href: "#", color: "red") { "Error" }
      }
    }
  
    # Thumbnails
    Row {
      Column {
        Header(size: :h1) { "Thumbnails" }
        Divider()
        Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: "small")
      }
    }
  
    # Dropdown
    Row {
      Column {
        Header(size: :h1) { "Dropdown" }
        Divider()
        Dropdown(selection: true, placeholder: "Select", name: "selection") {
          MenuItem(value: "male") { "Male" }
          MenuItem(value: "female") { "Female" }
        }
        Menu(vertical: true) {
          MenuItem(href: "#", active: true) { "Friends" }
          MenuItem(href: "#") { "Messages" }
          MenuItem(dropdown: true) {
            Icon(name: "dropdown")
            text " More"
            MenuMenu {
              MenuItem(href: "#") { "Edit Profile" }
              MenuItem(href: "#") { "Choose Language" }
              MenuItem(href: "#") { "Account Settings" }
            }
          }
        }
      }
    }
  
    # Badges
    Row {
      Column {
        Header(size: :h1) { "Badges" }
        Divider()
        Menu(vertical: true) {
          MenuItem {
            text "One "
            Tag { "2" }
          }
          MenuItem {
            text "Two "
            Tag { "2" }
          }
          MenuItem {
            text "Three "
            Tag { "2" }
          }
        }
      }
    }
  
    # Tables
    Row {
      Column {
        Header(size: :h1) { "Tables" }
        Grid(columns: 2) {
          Column {
            Table { |c|
              c.header {
                TableRow {
                  TableCell(heading: true) { "Name" }
                  TableCell(heading: true) { "Premium Plan" }
                }
              }
              TableRow {
                TableCell { "John" }
                TableCell { "No" }
              }
              TableRow {
                TableCell { "Jamie" }
                TableCell { "Yes" }
              }
              TableRow {
                TableCell { "Jill" }
                TableCell { "Yes" }
              }
            }
          }
  
          Column {
            Table(basic: "true") { |c|
              c.header {
                TableRow {
                  TableCell(heading: true) { "Name" }
                  TableCell(heading: true) { "Premium Plan" }
                }
              }
              TableRow {
                TableCell { "John" }
                TableCell { "No" }
              }
              TableRow {
                TableCell { "Jamie" }
                TableCell { "Yes" }
              }
              TableRow {
                TableCell { "Jill" }
                TableCell { "Yes" }
              }
            }
          }
  
          Column {
            Table(definition: true) { |c|
              c.header {
                TableRow {
                  TableCell(heading: true) { "Name" }
                  TableCell(heading: true) { "Premium Plan" }
                }
              }
              TableRow {
                TableCell { "John" }
                TableCell { "No" }
              }
              TableRow {
                TableCell { "Jamie" }
                TableCell { "Yes" }
              }
              TableRow {
                TableCell { "Jill" }
                TableCell { "Yes" }
              }
            }
          }
  
          Column {
            Table(basic: "very") { |c|
              c.header {
                TableRow {
                  TableCell(heading: true) { "Name" }
                  TableCell(heading: true) { "Premium Plan" }
                }
              }
              TableRow {
                TableCell { "John" }
                TableCell { "No" }
              }
              TableRow {
                TableCell { "Jamie" }
                TableCell { "Yes" }
              }
              TableRow {
                TableCell { "Jill" }
                TableCell { "Yes" }
              }
            }
          }
  
          Column(width: 16) {
            Table(celled: true, structured: true) { |c|
              c.header {
                TableRow {
                  TableCell(heading: true, rowspan: 2) { "Name" }
                  TableCell(heading: true, rowspan: 2) { "Type" }
                  TableCell(heading: true, rowspan: 2) { "Files" }
                  TableCell(heading: true, colspan: 3) { "Languages" }
                }
                TableRow {
                  TableCell(heading: true) { "Ruby" }
                  TableCell(heading: true) { "JavaScript" }
                  TableCell(heading: true) { "Python" }
                }
              }
              TableRow {
                TableCell { "Alpha Team" }
                TableCell { "Project 1" }
                TableCell { "2" }
                TableCell { Icon(name: "checkmark", size: "large", color: "green") }
                TableCell {}
                TableCell {}
              }
              TableRow {
                TableCell(rowspan: 3) { "Beta Team" }
                TableCell { "Project 1" }
                TableCell { "52" }
                TableCell { Icon(name: "checkmark", size: "large", color: "green") }
                TableCell {}
                TableCell {}
              }
              TableRow {
                TableCell { "Project 2" }
                TableCell { "12" }
                TableCell {}
                TableCell { Icon(name: "checkmark", size: "large", color: "green") }
                TableCell {}
              }
              TableRow {
                TableCell { "Project 3" }
                TableCell { "21" }
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
        Header(size: :h1) { "Alerts" }
        Divider()
        Message(type: "positive") { "Well done! You successfully read this important alert message." }
        Message(type: "info") { "Heads up! This alert needs your attention, but it's not super important." }
        Message(type: "warning") { "Warning! Best check yo self, you're not looking too good." }
        Message(type: "error") { "Oh snap! Change a few things up and try submitting again." }
      }
    }
  
    # List groups
    Row {
      Column {
        Header(size: :h1) { "List groups" }
        Divider()
        Grid(columns: 3) {
          Column {
            SegmentGroup {
              Segment { "Cras justo odio" }
              Segment { "Dapibus ac facilisis in" }
              Segment { "Morbi leo risus" }
              Segment { "Porta ac consectetur ac" }
              Segment { "Vestibulum at eros" }
            }
          }
  
          Column {
            Menu(vertical: true, fluid: true) {
              MenuItem(href: "#") { "Cras justo odio" }
              MenuItem(href: "#") { "Vestibulum at eros" }
            }
          }
  
          Column {
            Menu(vertical: true, fluid: true) {
              MenuItem(href: "#") {
                Header(size: "medium") { "List group item heading" }
                text "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit."
              }
              MenuItem(href: "#") {
                Header(size: "medium") { "List group item heading" }
                text "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit."
              }
              MenuItem(href: "#") {
                Header(size: "medium") { "List group item heading" }
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
        Header(size: :h1) { "Panels" }
        Divider()
        Grid(columns: 3) {
          Column {
            SegmentGroup {
              Segment(color: "red") { "One" }
              Segment(color: "blue") { "Two" }
              Segment(color: "green") { "Three" }
            }
          }
  
          Column {
            SegmentGroup {
              Segment(raised: true) { "One" }
              Segment { "Two" }
              Segment { "Three" }
            }
          }
  
          Column {
            SegmentGroup {
              Segment(stacked: true) { "One" }
              Segment { "Two" }
              Segment { "Three" }
            }
          }
  
          Column {
            Message(type: "error", attached: true) { "Error" }
            Segment(attached: true) { "Panel content" }
          }
  
          Column {
            Message(type: "info", attached: true) { "Info" }
            Segment(attached: true) { "Panel content" }
          }
  
          Column {
            Message(type: "success", attached: true) { "Success" }
            Segment(attached: true) { "Panel content" }
          }
  
          Column {
            Header(size: :h4, inverted: true, attached: "top") { "Header" }
            Segment(attached: true) { "Panel content" }
          }
  
          Column {
            Header(size: :h4, block_header: true, attached: "top") { "Header" }
            Segment(attached: true) { "Panel content" }
          }
  
          Column {
            Header(size: :h4, attached: "top") { "Header" }
            Segment(attached: true) { "Panel content" }
          }
        }
      }
    }
  
    # Wells
    Row {
      Column {
        Header(size: :h1) { "Wells" }
        Divider()
        Segment { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
        Segment(secondary: true) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
        Segment(tertiary: true) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
        Segment(inverted: true) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
        Segment(inverted: true, secondary: true) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
        Segment(inverted: true, tertiary: true) { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna." }
      }
    }
  }
}
