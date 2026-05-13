text '<style>
  h1.ui.center.header { margin-top: 3em; }
  h2.ui.center.header { margin: 4em 0em 2em; }
  h3.ui.center.header { margin-top: 2em; padding: 2em 0em; }
</style>'.html_safe

Header(size: :h1, aligned: "center") { "Responsive UI Examples" }

Header(size: :h2, aligned: "center") { "Basic Responsive" }

# Container
Header(size: :h3, aligned: "center") { "Container" }
Container {
  SegmentGroup {
    Segment { "Content" }
    Segment { "Content" }
    Segment { "Content" }
    Segment { "Content" }
  }
}

# Text container
Header(size: :h3, aligned: "center") { "Text Container" }
Container(text: true) {
  SegmentGroup {
    Segment { "Content" }
    Segment { "Content" }
    Segment { "Content" }
    Segment { "Content" }
  }
}

# Stackable Grid
Header(size: :h3, aligned: "center") { "Stackable Grid" }
Grid(columns: 2, stackable: true) {
  Column {
    Segment { "Content" }
  }
  Column {
    Segment { "Content" }
  }
  Row(columns: 3) {
    3.times {
      Column {
        Segment { "Content" }
      }
    }
  }
  Column(width: 10) {
    Segment { "Content" }
  }
  Column(width: 6) {
    Segment { "Content" }
  }
}

# Doubling Grid
Header(size: :h3, aligned: "center") { "Doubling Grid" }
Grid(columns: 3, doubling: true) {
  6.times {
    Column {
      Segment { "Content" }
    }
  }
}

# Doubling Stackable Grid
Header(size: :h3, aligned: "center") { "Doubling Stackable Grid" }
Grid(columns: 3, doubling: true, stackable: true) {
  6.times {
    Column {
      Segment { "Content" }
    }
  }
}

# Nested Stackable Grid
Header(size: :h3, aligned: "center") { "Nested Stackable Grid" }
Grid(columns: 2) {
  Column {
    Grid(columns: 2, stackable: true, doubling: true) {
      2.times {
        Column {
          Segment { "Content" }
        }
      }
    }
  }
  Column {
    Grid(columns: 3, stackable: true, doubling: true) {
      3.times {
        Column {
          Segment { "Content" }
        }
      }
    }
  }
}

# Stackable Grid Container
Header(size: :h3, aligned: "center") { "Stackable Grid Container" }
Grid(columns: 2, stackable: true, container: true) {
  6.times {
    Column {
      Segment { "Content" }
    }
  }
}

# Doubling Grid Container
Header(size: :h3, aligned: "center") { "Doubling Grid Container" }
Grid(columns: 3, doubling: true, container: true) {
  6.times {
    Column {
      Segment { "Content" }
    }
  }
}

# Doubling Stackable Grid Container
Header(size: :h3, aligned: "center") { "Doubling Stackable Grid Container" }
Grid(columns: 3, doubling: true, stackable: true, container: true) {
  6.times {
    Column {
      Segment { "Content" }
    }
  }
}

Header(size: :h2, aligned: "center") { "Device Adjustment" }

# Device Column Width
Header(size: :h3, aligned: "center") { "Device Column Width" }
Grid {
  Column(computer: 3, tablet: 9, mobile: 6) {
    Segment { "Content" }
  }
  Column(width: 4) {
    Segment { "Content" }
  }
  Column(computer: 9, tablet: 3, mobile: 6) {
    Segment { "Content" }
  }
  Column(computer: 9, tablet: 3, mobile: 6) {
    Segment { "Content" }
  }
  Column(width: 4) {
    Segment { "Content" }
  }
  Column(computer: 3, tablet: 9, mobile: 6) {
    Segment { "Content" }
  }
}

# Device Visibility
Header(size: :h3, aligned: "center") { "Device Visibility" }
Grid(columns: 4) {
  Column(width: 10, only: "widescreen") {
    Segment { "Widescreen" }
  }
  Column(width: 6, only: "widescreen") {
    Segment { "Widescreen" }
  }
  Column(width: 6, only: "large screen") {
    Segment { "Large Screen" }
  }
  Column(width: 10, only: "large screen") {
    Segment { "Large Screen" }
  }
  Column(width: 8, only: "tablet mobile") {
    Segment { "Tablet and Mobile" }
  }
  Column(width: 8, only: "tablet mobile") {
    Segment { "Tablet and Mobile" }
  }
  Column(width: 16, only: "mobile") {
    Segment { "Mobile" }
  }
  Row(columns: 2, only: "computer") {
    Column {
      Segment { "Computer and Up" }
    }
    Column {
      Segment { "Computer and Up" }
    }
  }
  4.times {
    Column(only: "tablet") {
      Segment { "Tablet Only Content" }
    }
  }
}

Header(size: :h2, aligned: "center") { "Responsive Grid with Variations" }

# Stackable Divided Grid
Header(size: :h3, aligned: "center") { "Stackable Divided Grid" }
Grid(columns: 2, stackable: true, divided: "true", container: true) {
  3.times {
    Row {
      Column {
        Segment { "Content" }
      }
      Column {
        Segment { "Content" }
      }
    }
  }
}

# Stackable Vertically Divided Grid
Header(size: :h3, aligned: "center") { "Stackable Vertically Divided Grid" }
Grid(columns: 2, stackable: true, divided: "vertically", container: true) {
  3.times {
    Row {
      Column {
        Segment { "Content" }
      }
      Column {
        Segment { "Content" }
      }
    }
  }
}

# Celled Stackable Grid
Header(size: :h3, aligned: "center") { "Celled Stackable Grid" }
Grid(stackable: true, celled: "true", container: true) {
  Row(columns: 2) {
    2.times {
      Column {
        Segment { "Content" }
      }
    }
  }
  Row(columns: 3) {
    3.times {
      Column {
        Segment { "Content" }
      }
    }
  }
  Row(columns: 2) {
    2.times {
      Column {
        Segment { "Content" }
      }
    }
  }
}

# Consecutive Doubling Stackable Grid
Header(size: :h3, aligned: "center") { "Consecutive Doubling Stackable Grid" }
2.times {
  Grid(columns: 3, doubling: true, stackable: true, container: true) {
    6.times {
      Column {
        Segment { "Content" }
      }
    }
  }
}

# Grid Container
Header(size: :h3, aligned: "center") { "Grid Container" }
Grid(columns: 3, container: true) {
  6.times {
    Column {
      Segment { "Content" }
    }
  }
}

Header(size: :h1, aligned: "center") { "Responsive Elements" }

# Responsive Vertical Divider
Header(size: :h3, aligned: "center") { "Responsive Vertical Divider" }
Grid(columns: 2, stackable: true, relaxed: "very", container: true) {
  Column {
    Segment { "Content" }
  }
  Divider(vertical: true) { "Or" }
  Column {
    Segment { "Content" }
  }
}

# Responsive Table
Header(size: :h3, aligned: "center") { "Responsive Table" }
Container {
  Table(celled: true) { |c|
    c.header {
      TableRow {
        TableCell(heading: true) { "Employee" }
        TableCell(heading: true) { "Correct Guesses" }
      }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Lena"
          SubHeader { "Human Resources" }
        }
      }
      TableCell { "22" }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Matthew"
          SubHeader { "Fabric Design" }
        }
      }
      TableCell { "15" }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Lindsay"
          SubHeader { "Entertainment" }
        }
      }
      TableCell { "12" }
    }
    TableRow {
      TableCell {
        Header(size: :h4, image: true) { |c|
          c.header_image { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "mini", rounded: true) }
          text "Mark"
          SubHeader { "Executive" }
        }
      }
      TableCell { "11" }
    }
  }
}

# Responsive Menu
Header(size: :h3, aligned: "center") { "Responsive Menu" }
Menu(stackable: true) {
  MenuItem {
    Image(src: "/icon.png")
  }
  MenuItem(href: "#") { "Features" }
  MenuItem(href: "#") { "Testimonials" }
  MenuItem(href: "#") { "Sign-in" }
}

# Responsive Item
Header(size: :h3, aligned: "center") { "Responsive Item" }
Container {
  ItemGroup(relaxed: true, divided: true) {
    3.times {
      Item { |c|
        c.image { Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: "small") }
        c.header { Link(href: "#") { "Content Header" } }
        c.meta { Link(href: "#") { "Date" }; text " "; Link(href: "#") { "Category" } }
        c.description { "A description which may flow for several lines and give context to the content." }
        c.extra { Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", rounded: true, size: "avatar"); text " Username" }
      }
    }
  }
}

# Responsive Steps
Header(size: :h3, aligned: "center") { "Responsive Steps" }
Container {
  StepGroup(size: "three") {
    Step(title: "Shipping", description: "Choose your shipping options")
    Step(active: true, title: "Billing", description: "Enter billing information")
    Step(disabled: true, title: "Confirm Order", description: "Review your order details")
  }
}
