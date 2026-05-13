Header { "Grid" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
  }
}

Header { "Columns" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 2)
    Column(width: 8)
    Column(width: 6)
  }
}

Header { "Rows" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 4) {
    Row {
      Column()
      Column()
      Column()
    }
    Column()
    Column()
    Column()
    Column()
  }
}

Header { "Gutters" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Row(columns: 3) {
      Column()
      Column()
      Column()
    }
    Row(columns: 8) {
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
    }
  }
  Grid(relaxed: "true") {
    Row(columns: 3) {
      Column()
      Column()
      Column()
    }
    Row(columns: 8) {
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
    }
  }
}

Header { "Automatic Flow" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
  }
}

Header { "Column Content" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3) {
    Column {
      Segment { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
    Column {
      Segment { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
    Column {
      Segment { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
  }
}

Header { "Column Widths" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 8)
    Column(width: 8)
    Column(width: 10)
    Column(width: 6)
    Column(width: 4)
    Column(width: 12)
    Column(width: 2)
    Column(width: 14)
    Column(width: 16)
  }
}

Header { "Grouping" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 4) {
    Row(columns: 2) {
      Column()
    }
    Column()
    Column()
    Column()
    Column()
  }
}

Header { "Clearing Content" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Row(columns: 4) {
      Column(floated: "left")
      Column(floated: "right")
    }
    Row {
      Column(width: 3)
      Column(width: 8)
      Column(width: 5)
    }
  }
}

Header { "Internally Celled" }
Wrapper(style: "contain: layout style;") {
  Grid(celled: "internally") {
    Row {
      Column(width: 3) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column(width: 10) { Image(src: "/images/wireframe/centered-paragraph.png", class: "wireframe") }
      Column(width: 3) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
    Row {
      Column(width: 3) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column(width: 10) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column(width: 3) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
  }
}

Header { "Nesting Grids" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2) {
    Column {
      Grid(columns: 3) {
        Column()
        Column()
        Column()
      }
    }
    Column()
    Column()
    Column {
      Grid {
        Column(width: 10)
        Column(width: 6)
      }
    }
  }
}

Header { "Colored" }
Wrapper(style: "contain: layout style;") {
  Grid(equal_width: true, aligned: "center", padded: "true") {
    Row {
      Column(color: "olive") { "Olive" }
      Column(color: "black") { "Black" }
    }
    Row {
      Column(color: "black") { "Black" }
      Column(color: "olive") { "Olive" }
    }
  }
}

Header { "Equal Width" }
Wrapper(style: "contain: layout style;") {
  Grid(equal_width: true) {
    Column()
    Column()
    Column()
    Row(equal_width: true) {
      Column()
      Column()
    }
  }
}

Header { "Centered" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2, centered: true) {
    Column()
    Row(columns: 4, centered: true) {
      Column()
      Column()
    }
  }
}

Header { "Stackable" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 4, stackable: true) {
    Column()
    Column()
    Column()
    Column()
  }
}

Header { "Reverse Order" }
Wrapper(style: "contain: layout style;") {
  Grid(equal_width: true, reversed: "mobile") {
    Column { "First" }
    Column { "Second" }
    Column { "Third" }
  }
}

Header { "Doubling" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Row(columns: 8, doubling: true) {
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
    }
    Row(columns: 6, doubling: true) {
      Column()
      Column()
      Column()
      Column()
      Column()
      Column()
    }
    Row(columns: 4, doubling: true) {
      Column()
      Column()
      Column()
      Column()
    }
  }
}

Header { "Container Grid" }
Wrapper(style: "contain: layout style;") {
  Grid(container: true) {
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
    Column(width: 4)
  }
}

Header { "Divided" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3, divided: "true") {
    Row {
      Column { Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe") }
    }
    Row {
      Column { Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe") }
    }
  }
}

Header { "Vertically Divided" }
Wrapper(style: "contain: layout style;") {
  Grid(divided: "vertically") {
    Row(columns: 2) {
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    }
    Row(columns: 3) {
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    }
  }
}

Header { "Celled" }
Wrapper(style: "contain: layout style;") {
  Grid(celled: "true") {
    Row {
      Column(width: 3) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column(width: 13) { Image(src: "/images/wireframe/centered-paragraph.png", class: "wireframe") }
    }
    Row {
      Column(width: 3) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column(width: 10) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column(width: 3) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
  }
}

Header { "Rows" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3) {
    Row {
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    }
    Row {
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    }
  }
}

Header { "Columns" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 8) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(width: 8) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(width: 8) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(width: 8) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
  }
}

Header { "Floated" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 5, floated: "left") { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(width: 5, floated: "right") { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
  }
}

Header { "Column Width" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 4) { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column(width: 9) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(width: 3) { Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe") }
  }
}

Header { "Column Count" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Row(columns: 3) {
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
    Row(columns: 4) {
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
    Row(columns: 5) {
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
  }
}

Header { "Equal Width" }
Wrapper(style: "contain: layout style;") {
  Grid(equal_width: true) {
    Column { Segment { "1" } }
    Column(width: 8) { Segment { "2" } }
    Column { Segment { "3" } }
  }
}

Header { "Equal Width Rows" }
Wrapper(style: "contain: layout style;") {
  Grid(equal_width: true) {
    Row {
      Column { Segment { "1" } }
      Column { Segment { "2" } }
      Column { Segment { "3" } }
      Column { Segment { "4" } }
    }
    Row {
      Column { Segment { "1" } }
      Column { Segment { "2" } }
      Column { Segment { "3" } }
    }
    Row {
      Column { Segment { "1" } }
      Column { Segment { "2" } }
    }
  }
}

Header { "Stretched" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3, divided: "true") {
    Row(stretched: true) {
      Column { Segment { "1" } }
      Column {
        Segment { "1" }
        Segment { "2" }
      }
      Column {
        Segment { "1" }
        Segment { "2" }
        Segment { "3" }
      }
    }
  }
}

Header { "Padded" }
Wrapper(style: "contain: layout style;") {
  Divider()
  Grid(columns: 2, padded: "true") {
    Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
  }
}

Header { "Vertically Padded" }
Wrapper(style: "contain: layout style;") {
  Divider()
  Grid(columns: 2, padded: "vertically") {
    Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
  }
}

Header { "Horizontally Padded" }
Wrapper(style: "contain: layout style;") {
  Divider()
  Grid(columns: 2, padded: "horizontally") {
    Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
  }
}

Header { "Relaxed" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 4, relaxed: "true") {
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
  }
}

Header { "Very Relaxed" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 4, relaxed: "very") {
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
  }
}

Header { "Colored Columns" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 5, padded: "true") {
    Column(color: "red") { "Red" }
    Column(color: "orange") { "Orange" }
    Column(color: "yellow") { "Yellow" }
    Column(color: "olive") { "Olive" }
    Column(color: "green") { "Green" }
    Column(color: "teal") { "Teal" }
    Column(color: "blue") { "Blue" }
    Column(color: "violet") { "Violet" }
    Column(color: "purple") { "Purple" }
    Column(color: "pink") { "Pink" }
    Column(color: "brown") { "Brown" }
    Column(color: "grey") { "Grey" }
    Column(color: "black") { "Black" }
  }
}

Header { "Colored Rows" }
Wrapper(style: "contain: layout style;") {
  Grid(padded: "true") {
    Row(color: "red") { Column { "Red" } }
    Row(color: "orange") { Column { "Orange" } }
    Row(color: "yellow") { Column { "Yellow" } }
    Row(color: "olive") { Column { "Olive" } }
    Row(color: "green") { Column { "Green" } }
    Row(color: "teal") { Column { "Teal" } }
    Row(color: "blue") { Column { "Blue" } }
    Row(color: "violet") { Column { "Violet" } }
    Row(color: "purple") { Column { "Purple" } }
    Row(color: "pink") { Column { "Pink" } }
    Row(color: "brown") { Column { "Brown" } }
    Row(color: "grey") { Column { "Grey" } }
    Row(color: "black") { Column { "Black" } }
  }
}

Header { "Centered Grid" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2, centered: true) {
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Row(columns: 4, centered: true) {
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
    Row(columns: 4) {
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
  }
}

Header { "Text Alignment" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3, aligned: "center") {
    Row {
      Column {
        Menu(vertical: true, fluid: true) {
          MenuItem(header: true) { "Cats" }
        }
      }
      Column {
        Menu(vertical: true, fluid: true) {
          MenuItem(header: true) { "Dogs" }
          MenuItem { "Poodle" }
          MenuItem { "Cockerspaniel" }
        }
      }
      Column {
        Menu(vertical: true, fluid: true) {
          MenuItem(header: true) { "Monkeys" }
        }
      }
    }
  }
}

Header { "Vertical Alignment" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 4, centered: true, class: "middle aligned") {
    Row {
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
      Column {
        Image(src: "/images/wireframe/image.png", class: "wireframe")
        Image(src: "/images/wireframe/image.png", class: "wireframe")
      }
      Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    }
  }
}

Header { "Doubling Grid" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 5, doubling: true) {
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
    Column { Image(src: "/images/wireframe/image.png", class: "wireframe") }
  }
}

Header { "Stackable Grid" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2, stackable: true) {
    Column {
      Segment {
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      }
    }
    Column {
      Segment {
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      }
    }
  }
}

Header { "Reversed" }
Wrapper(style: "contain: layout style;") {
  Grid(equal_width: true, reversed: "computer") {
    Row {
      Column { "Computer A Fourth" }
      Column { "Computer A Third" }
      Column { "Computer A Second" }
      Column { "Computer A First" }
    }
    Row {
      Column { "Computer B Fourth" }
      Column { "Computer B Third" }
      Column { "Computer B Second" }
      Column { "Computer B First" }
    }
  }
  Grid(equal_width: true, reversed: "tablet") {
    Column { "Tablet Fourth" }
    Column { "Tablet Third" }
    Column { "Tablet Second" }
    Column { "Tablet First" }
  }
  Grid(equal_width: true, reversed: "mobile") {
    Column { "Mobile Fourth" }
    Column { "Mobile Third" }
    Column { "Mobile Second" }
    Column { "Mobile First" }
  }
}

Header { "Responsive Width" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(mobile: 16, tablet: 8, computer: 4) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(mobile: 16, tablet: 8, computer: 4) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(mobile: 16, tablet: 8, computer: 4) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(mobile: 16, tablet: 8, computer: 4) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
    Column(mobile: 16, tablet: 8, computer: 4) { Image(src: "/images/wireframe/paragraph.png", class: "wireframe") }
  }
}
