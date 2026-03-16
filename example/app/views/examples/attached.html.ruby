text '<style>
  h2 { margin: 2em 0em; }
  .ui.container { padding-top: 5em; padding-bottom: 5em; }
</style>'.html_safe

Container {
  Header(size: :h2) { text "Attached Content" }
  Grid(columns: 3) {
    # Column 1 — attached segments
    Column {
      Segment(attached: "top") { text "Segment 1" }
      Segment(attached: "") { text "Segment 2" }
      Segment(attached: "") { text "Segment 2" }
      Segment(attached: "bottom") { text "Segment 3" }

      SegmentGroup {
        Segment { text "Top" }
        SegmentGroup {
          Segment { text "Nested Top" }
          Segment { text "Nested Middle" }
          Segment { text "Nested Bottom" }
        }
        Segment { text "Middle" }
        SegmentGroup(horizontal: true) {
          Segment { text "Top" }
          Segment { text "Middle" }
          Segment { text "Bottom" }
        }
        Segment { text "Bottom" }
      }
    }

    # Column 2 — attached tables
    Column {
      Table(basic: "true", attached: "top") { |c|
        c.header {
          TableRow {
            TableCell(heading: true) { text "Header" }
            TableCell(heading: true) { text "Header" }
            TableCell(heading: true) { text "Header" }
          }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
      }
      Table(attached: "") { |c|
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
      }
      Table(celled: true, selectable: true, attached: "") { |c|
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
      }
      Table(celled: true, attached: "bottom") { |c|
        c.header {
          TableRow {
            TableCell(heading: true) { text "Header" }
            TableCell(heading: true) { text "Header" }
            TableCell(heading: true) { text "Header" }
          }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
        TableRow {
          TableCell { text "Cell" }
          TableCell { text "Cell" }
          TableCell { text "Cell" }
        }
      }
    }

    # Column 3 — attached menus
    Column {
      Menu(attached: "top", items: 3) {
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
      }
      Menu(attached: "", items: 3) {
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
      }
      Menu(attached: "", items: 3) {
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
      }
      Menu(attached: "bottom", items: 3) {
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
      }

      Menu(tabular: true, attached: "top") {
        MenuItem(href: "#", active: true) { text "Active Item" }
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
      }
      Segment(attached: "bottom") { text "Segment" }

      Menu(attached: "top") {
        MenuItem(href: "#", active: true) { text "Active Item" }
        MenuItem(href: "#") { text "Item" }
        MenuItem(href: "#") { text "Item" }
      }
      Segment(attached: "bottom") { text "Segment" }
    }
  }
}

Container(text: true) {
  Header(size: :h2) { text "Header Groups" }

  Header(size: :h4, block_header: true, attached: "top") { text "Top Block Header" }
  Segment(attached: "bottom") { text "Segment" }

  Divider(section: true)

  Segment(attached: "top") { text "Segment" }
  Header(size: :h4, block_header: true, attached: "bottom") { text "Bottom Block Header" }

  Divider(section: true)

  Header(size: :h4, block_header: true, attached: "top") { text "Top Block Header" }
  Segment(attached: "") { text "Segment" }
  Header(size: :h4, block_header: true, attached: "") { text "Middle Block Header" }
  Segment(attached: "") { text "Segment" }
  Header(size: :h4, block_header: true, attached: "bottom") { text "Bottom Block Header" }

  Header(size: :h2) { text "Mixed Attached Content" }
  Divider(section: true)

  Segment(attached: "top") { text "Segment" }
  Menu(attached: "", items: 3) {
    MenuItem(href: "#") { text "Item" }
    MenuItem(href: "#") { text "Item" }
    MenuItem(href: "#") { text "Item" }
  }
  Segment(attached: "") { text "1" }
  Message(attached: "", icon: "help circle", type: "info") {
    text "Message"
  }
  Table(attached: "bottom") { |c|
    c.header {
      TableRow {
        TableCell(heading: true) { text "Header" }
        TableCell(heading: true) { text "Header" }
        TableCell(heading: true) { text "Header" }
      }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
  }

  Divider(section: true)

  Message(attached: "top", icon: "attention", type: "warning") {
    text "Message"
  }
  Table(attached: "") { |c|
    c.header {
      TableRow {
        TableCell(heading: true) { text "Header" }
        TableCell(heading: true) { text "Header" }
        TableCell(heading: true) { text "Header" }
      }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
  }
  Menu(attached: "bottom", items: 3) {
    MenuItem(href: "#") { text "Item" }
    MenuItem(href: "#") { text "Item" }
    MenuItem(href: "#") { text "Item" }
  }

  Divider(section: true)

  Menu(inverted: true, attached: "top", items: 3) {
    MenuItem(href: "#") { text "Item" }
    MenuItem(href: "#") { text "Item" }
    MenuItem(href: "#") { text "Item" }
  }
  Table(inverted: true, attached: "") { |c|
    c.header {
      TableRow {
        TableCell(heading: true) { text "Header" }
        TableCell(heading: true) { text "Header" }
        TableCell(heading: true) { text "Header" }
      }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
    TableRow {
      TableCell { text "Cell" }
      TableCell { text "Cell" }
      TableCell { text "Cell" }
    }
  }
  Segment(inverted: true, attached: "bottom") { text "Segment" }
}
