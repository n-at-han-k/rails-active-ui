text '<style>
  h1.ui.center.header { margin-top: 3em; }
  h2.ui.center.header { margin: 4em 0em 2em; }
  h3.ui.center.header { margin-top: 2em; padding: 2em 0em; }
</style>'.html_safe

Header(size: :h1, aligned: "center") { text "Responsive UI Examples" }

Header(size: :h2, aligned: "center") { text "Basic Responsive" }

# Container
Header(size: :h3, aligned: "center") { text "Container" }
Container {
  SegmentGroup {
    Segment { text "Content" }
    Segment { text "Content" }
    Segment { text "Content" }
    Segment { text "Content" }
  }
}

# Text container
Header(size: :h3, aligned: "center") { text "Text Container" }
Container(text: true) {
  SegmentGroup {
    Segment { text "Content" }
    Segment { text "Content" }
    Segment { text "Content" }
    Segment { text "Content" }
  }
}

# Stackable Grid
Header(size: :h3, aligned: "center") { text "Stackable Grid" }
Grid(columns: 2, stackable: true) {
  Column {
    Segment { text "Content" }
  }
  Column {
    Segment { text "Content" }
  }
  Row(columns: 3) {
    3.times {
      Column {
        Segment { text "Content" }
      }
    }
  }
  Column(width: 10) {
    Segment { text "Content" }
  }
  Column(width: 6) {
    Segment { text "Content" }
  }
}

# Doubling Grid
Header(size: :h3, aligned: "center") { text "Doubling Grid" }
Grid(columns: 3, doubling: true) {
  6.times {
    Column {
      Segment { text "Content" }
    }
  }
}

# Doubling Stackable Grid
Header(size: :h3, aligned: "center") { text "Doubling Stackable Grid" }
Grid(columns: 3, doubling: true, stackable: true) {
  6.times {
    Column {
      Segment { text "Content" }
    }
  }
}

# Nested Stackable Grid
Header(size: :h3, aligned: "center") { text "Nested Stackable Grid" }
Grid(columns: 2) {
  Column {
    Grid(columns: 2, stackable: true, doubling: true) {
      2.times {
        Column {
          Segment { text "Content" }
        }
      }
    }
  }
  Column {
    Grid(columns: 3, stackable: true, doubling: true) {
      3.times {
        Column {
          Segment { text "Content" }
        }
      }
    }
  }
}

# Stackable Grid Container
Header(size: :h3, aligned: "center") { text "Stackable Grid Container" }
Grid(columns: 2, stackable: true, container: true) {
  6.times {
    Column {
      Segment { text "Content" }
    }
  }
}

# Doubling Grid Container
Header(size: :h3, aligned: "center") { text "Doubling Grid Container" }
Grid(columns: 3, doubling: true, container: true) {
  6.times {
    Column {
      Segment { text "Content" }
    }
  }
}

# Doubling Stackable Grid Container
Header(size: :h3, aligned: "center") { text "Doubling Stackable Grid Container" }
Grid(columns: 3, doubling: true, stackable: true, container: true) {
  6.times {
    Column {
      Segment { text "Content" }
    }
  }
}

Header(size: :h2, aligned: "center") { text "Device Adjustment" }

# Device Column Width
Header(size: :h3, aligned: "center") { text "Device Column Width" }
Grid {
  Column(computer: 3, tablet: 9, mobile: 6) {
    Segment { text "Content" }
  }
  Column(width: 4) {
    Segment { text "Content" }
  }
  Column(computer: 9, tablet: 3, mobile: 6) {
    Segment { text "Content" }
  }
  Column(computer: 9, tablet: 3, mobile: 6) {
    Segment { text "Content" }
  }
  Column(width: 4) {
    Segment { text "Content" }
  }
  Column(computer: 3, tablet: 9, mobile: 6) {
    Segment { text "Content" }
  }
}

# Device Visibility
Header(size: :h3, aligned: "center") { text "Device Visibility" }
Grid(columns: 4) {
  Column(width: 10, only: "widescreen") {
    Segment { text "Widescreen" }
  }
  Column(width: 6, only: "widescreen") {
    Segment { text "Widescreen" }
  }
  Column(width: 6, only: "large screen") {
    Segment { text "Large Screen" }
  }
  Column(width: 10, only: "large screen") {
    Segment { text "Large Screen" }
  }
  Column(width: 8, only: "tablet mobile") {
    Segment { text "Tablet and Mobile" }
  }
  Column(width: 8, only: "tablet mobile") {
    Segment { text "Tablet and Mobile" }
  }
  Column(width: 16, only: "mobile") {
    Segment { text "Mobile" }
  }
  Row(columns: 2, only: "computer") {
    Column {
      Segment { text "Computer and Up" }
    }
    Column {
      Segment { text "Computer and Up" }
    }
  }
  4.times {
    Column(only: "tablet") {
      Segment { text "Tablet Only Content" }
    }
  }
}

Header(size: :h2, aligned: "center") { text "Responsive Grid with Variations" }

# Stackable Divided Grid
Header(size: :h3, aligned: "center") { text "Stackable Divided Grid" }
Grid(columns: 2, stackable: true, divided: "true", container: true) {
  3.times {
    Row {
      Column {
        Segment { text "Content" }
      }
      Column {
        Segment { text "Content" }
      }
    }
  }
}

# Stackable Vertically Divided Grid
Header(size: :h3, aligned: "center") { text "Stackable Vertically Divided Grid" }
Grid(columns: 2, stackable: true, divided: "vertically", container: true) {
  3.times {
    Row {
      Column {
        Segment { text "Content" }
      }
      Column {
        Segment { text "Content" }
      }
    }
  }
}

# Celled Stackable Grid
Header(size: :h3, aligned: "center") { text "Celled Stackable Grid" }
Grid(stackable: true, celled: "true", container: true) {
  Row(columns: 2) {
    2.times {
      Column {
        Segment { text "Content" }
      }
    }
  }
  Row(columns: 3) {
    3.times {
      Column {
        Segment { text "Content" }
      }
    }
  }
  Row(columns: 2) {
    2.times {
      Column {
        Segment { text "Content" }
      }
    }
  }
}

# Consecutive Doubling Stackable Grid
Header(size: :h3, aligned: "center") { text "Consecutive Doubling Stackable Grid" }
2.times {
  Grid(columns: 3, doubling: true, stackable: true, container: true) {
    6.times {
      Column {
        Segment { text "Content" }
      }
    }
  }
}

# Grid Container
Header(size: :h3, aligned: "center") { text "Grid Container" }
Grid(columns: 3, container: true) {
  6.times {
    Column {
      Segment { text "Content" }
    }
  }
}

Header(size: :h1, aligned: "center") { text "Responsive Elements" }

# Responsive Vertical Divider
Header(size: :h3, aligned: "center") { text "Responsive Vertical Divider" }
Grid(columns: 2, stackable: true, relaxed: "very", container: true) {
  Column {
    Segment { text "Content" }
  }
  Divider(vertical: true) { text "Or" }
  Column {
    Segment { text "Content" }
  }
}

# Responsive Table
Header(size: :h3, aligned: "center") { text "Responsive Table" }
Container {
  Table(celled: true) { |c|
    c.header {
      TableRow {
        TableCell(heading: true) { text "Employee" }
        TableCell(heading: true) { text "Correct Guesses" }
      }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Lena"
          SubHeader { text "Human Resources" }
        }
      }
      TableCell { text "22" }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Matthew"
          SubHeader { text "Fabric Design" }
        }
      }
      TableCell { text "15" }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Lindsay"
          SubHeader { text "Entertainment" }
        }
      }
      TableCell { text "12" }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Mark"
          SubHeader { text "Executive" }
        }
      }
      TableCell { text "11" }
    }
  }
}

# Responsive Menu
Header(size: :h3, aligned: "center") { text "Responsive Menu" }
Menu(stackable: true) {
  MenuItem {
    Image(src: "/icon.png")
  }
  MenuItem(href: "#") { text "Features" }
  MenuItem(href: "#") { text "Testimonials" }
  MenuItem(href: "#") { text "Sign-in" }
}

# Responsive Item
Header(size: :h3, aligned: "center") { text "Responsive Item" }
Container {
  ItemGroup(relaxed: true, divided: true) {
    3.times {
      Item { |c|
        c.image { Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: "small") }
        c.header { Link(href: "#") { text "Content Header" } }
        c.meta { Link(href: "#") { text "Date" }; text " "; Link(href: "#") { text "Category" } }
        c.description { text "A description which may flow for several lines and give context to the content." }
        c.extra { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", rounded: true, size: "avatar"); text " Username" }
      }
    }
  }
}

# Responsive Steps
Header(size: :h3, aligned: "center") { text "Responsive Steps" }
Container {
  StepGroup(size: "three") {
    Step(title: "Shipping", description: "Choose your shipping options")
    Step(active: true, title: "Billing", description: "Enter billing information")
    Step(disabled: true, title: "Confirm Order", description: "Review your order details")
  }
}
