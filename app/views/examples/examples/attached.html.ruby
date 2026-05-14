Wrapper(style: "contain: layout style;") {
  text '<style>
    h2 { margin: 2em 0em; }
    .ui.container { padding-top: 5em; padding-bottom: 5em; }
  </style>'.html_safe
  
  Container {
    Header(size: :h2) { "Attached Content" }
    Grid(columns: 3) {
      # Column 1 — attached segments
      Column {
        Segment(attached: true) { "Segment 1" }
        Segment(attached: true) { "Segment 2" }
        Segment(attached: true) { "Segment 2" }
        Segment(attached: true) { "Segment 3" }
  
        SegmentGroup {
          Segment { "Top" }
          SegmentGroup {
            Segment { "Nested Top" }
            Segment { "Nested Middle" }
            Segment { "Nested Bottom" }
          }
          Segment { "Middle" }
          SegmentGroup(aligned: "horizontal") {
            Segment { "Top" }
            Segment { "Middle" }
            Segment { "Bottom" }
          }
          Segment { "Bottom" }
        }
      }
  
      # Column 2 — attached tables
      Column {
        Table(basic: "true", attached: "top") { |c|
          c.header {
            TableRow {
              TableCell(heading: true) { "Header" }
              TableCell(heading: true) { "Header" }
              TableCell(heading: true) { "Header" }
            }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
        }
        Table(attached: "") { |c|
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
        }
        Table(celled: true, selectable: true, attached: "") { |c|
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
        }
        Table(celled: true, attached: "bottom") { |c|
          c.header {
            TableRow {
              TableCell(heading: true) { "Header" }
              TableCell(heading: true) { "Header" }
              TableCell(heading: true) { "Header" }
            }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
          TableRow {
            TableCell { "Cell" }
            TableCell { "Cell" }
            TableCell { "Cell" }
          }
        }
      }
  
      # Column 3 — attached menus
      Column {
        Menu(attached: true, items: 3) {
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
        }
        Menu(attached: true, items: 3) {
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
        }
        Menu(attached: true, items: 3) {
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
        }
        Menu(attached: true, items: 3) {
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
        }
  
        Menu(tabular: true, attached: true) {
          MenuItem(href: "#", active: true) { "Active Item" }
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
        }
        Segment(attached: true) { "Segment" }
  
        Menu(attached: true) {
          MenuItem(href: "#", active: true) { "Active Item" }
          MenuItem(href: "#") { "Item" }
          MenuItem(href: "#") { "Item" }
        }
        Segment(attached: true) { "Segment" }
      }
    }
  }
  
  Container(text: true) {
    Header(size: :h2) { "Header Groups" }
  
    Header(size: :h4, block_header: true, attached: "top") { "Top Block Header" }
    Segment(attached: true) { "Segment" }
  
    Divider(section: true)
  
    Segment(attached: true) { "Segment" }
    Header(size: :h4, block_header: true, attached: "bottom") { "Bottom Block Header" }
  
    Divider(section: true)
  
    Header(size: :h4, block_header: true, attached: "top") { "Top Block Header" }
    Segment(attached: true) { "Segment" }
    Header(size: :h4, block_header: true, attached: "") { "Middle Block Header" }
    Segment(attached: true) { "Segment" }
    Header(size: :h4, block_header: true, attached: "bottom") { "Bottom Block Header" }
  
    Header(size: :h2) { "Mixed Attached Content" }
    Divider(section: true)
  
    Segment(attached: true) { "Segment" }
    Menu(attached: true, items: 3) {
      MenuItem(href: "#") { "Item" }
      MenuItem(href: "#") { "Item" }
      MenuItem(href: "#") { "Item" }
    }
    Segment(attached: true) { "1" }
    Message(attached: true, icon: "help circle", type: "info") {
      text "Message"
    }
    Table(attached: "bottom") { |c|
      c.header {
        TableRow {
          TableCell(heading: true) { "Header" }
          TableCell(heading: true) { "Header" }
          TableCell(heading: true) { "Header" }
        }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
    }
  
    Divider(section: true)
  
    Message(attached: true, icon: "attention", type: "warning") {
      text "Message"
    }
    Table(attached: "") { |c|
      c.header {
        TableRow {
          TableCell(heading: true) { "Header" }
          TableCell(heading: true) { "Header" }
          TableCell(heading: true) { "Header" }
        }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
    }
    Menu(attached: true, items: 3) {
      MenuItem(href: "#") { "Item" }
      MenuItem(href: "#") { "Item" }
      MenuItem(href: "#") { "Item" }
    }
  
    Divider(section: true)
  
    Menu(inverted: true, attached: true, items: 3) {
      MenuItem(href: "#") { "Item" }
      MenuItem(href: "#") { "Item" }
      MenuItem(href: "#") { "Item" }
    }
    Table(inverted: true, attached: "") { |c|
      c.header {
        TableRow {
          TableCell(heading: true) { "Header" }
          TableCell(heading: true) { "Header" }
          TableCell(heading: true) { "Header" }
        }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
      TableRow {
        TableCell { "Cell" }
        TableCell { "Cell" }
        TableCell { "Cell" }
      }
    }
    Segment(inverted: true, attached: true) { "Segment" }
  }
}
