text '<style>
  .last.container { margin-bottom: 300px !important; }
  h1.ui.center.header { margin-top: 3em; }
  h2.ui.center.header { margin: 4em 0em 2em; }
  h3.ui.center.header { margin-top: 2em; padding: 2em 0em; }
</style>'.html_safe

Header(size: :h1, aligned: "center") { text "Responsive UI Examples" }

Header(size: :h2, aligned: "center") { text "Basic Responsive" }

# Container
Header(size: :h3, aligned: "center") { text "Container" }
Container {
  text '<div class="ui segments">'.html_safe
  Segment { text "Content" }
  Segment { text "Content" }
  Segment { text "Content" }
  Segment { text "Content" }
  text '</div>'.html_safe
}

# Text container
Header(size: :h3, aligned: "center") { text "Text Container" }
Container(text: true) {
  text '<div class="ui segments">'.html_safe
  Segment { text "Content" }
  Segment { text "Content" }
  Segment { text "Content" }
  Segment { text "Content" }
  text '</div>'.html_safe
}

# Stackable Grid
Header(size: :h3, aligned: "center") { text "Stackable Grid" }
Grid(columns: 2, stackable: true) {
  text '<div class="column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="three column row">'.html_safe
  3.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
  text '</div>'.html_safe
  text '<div class="ten wide column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="six wide column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
}

# Doubling Grid
Header(size: :h3, aligned: "center") { text "Doubling Grid" }
Grid(columns: 3, doubling: true) {
  6.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
}

# Doubling Stackable Grid
Header(size: :h3, aligned: "center") { text "Doubling Stackable Grid" }
Grid(columns: 3, doubling: true, stackable: true) {
  6.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
}

# Nested Stackable Grid
Header(size: :h3, aligned: "center") { text "Nested Stackable Grid" }
Grid(columns: 2) {
  text '<div class="column">'.html_safe
  Grid(columns: 2, stackable: true, doubling: true) {
    2.times {
      text '<div class="column">'.html_safe
      Segment { text "Content" }
      text '</div>'.html_safe
    }
  }
  text '</div>'.html_safe
  text '<div class="column">'.html_safe
  Grid(columns: 3, stackable: true, doubling: true) {
    3.times {
      text '<div class="column">'.html_safe
      Segment { text "Content" }
      text '</div>'.html_safe
    }
  }
  text '</div>'.html_safe
}

# Stackable Grid Container
Header(size: :h3, aligned: "center") { text "Stackable Grid Container" }
Grid(columns: 2, stackable: true, container: true) {
  6.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
}

# Doubling Grid Container
Header(size: :h3, aligned: "center") { text "Doubling Grid Container" }
Grid(columns: 3, doubling: true, container: true) {
  6.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
}

# Doubling Stackable Grid Container
Header(size: :h3, aligned: "center") { text "Doubling Stackable Grid Container" }
Grid(columns: 3, doubling: true, stackable: true, container: true) {
  6.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
}

Header(size: :h2, aligned: "center") { text "Device Adjustment" }

# Device Column Width
Header(size: :h3, aligned: "center") { text "Device Column Width" }
Grid {
  text '<div class="three wide computer nine wide tablet six wide mobile column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="four wide column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="nine wide computer three wide tablet six wide mobile column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="nine wide computer three wide tablet six wide mobile column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="four wide column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  text '<div class="three wide computer nine wide tablet six wide mobile column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
}

# Device Visibility
Header(size: :h3, aligned: "center") { text "Device Visibility" }
Grid(columns: 4) {
  text '<div class="widescreen only ten wide column">'.html_safe
  Segment { text "Widescreen" }
  text '</div>'.html_safe
  text '<div class="widescreen only six wide column">'.html_safe
  Segment { text "Widescreen" }
  text '</div>'.html_safe
  text '<div class="large screen only six wide column">'.html_safe
  Segment { text "Large Screen" }
  text '</div>'.html_safe
  text '<div class="large screen only ten wide column">'.html_safe
  Segment { text "Large Screen" }
  text '</div>'.html_safe
  text '<div class="tablet only mobile only eight wide column">'.html_safe
  Segment { text "Tablet and Mobile" }
  text '</div>'.html_safe
  text '<div class="tablet only mobile only eight wide column">'.html_safe
  Segment { text "Tablet and Mobile" }
  text '</div>'.html_safe
  text '<div class="mobile only sixteen wide column">'.html_safe
  Segment { text "Mobile" }
  text '</div>'.html_safe
  text '<div class="computer only two column row">'.html_safe
  text '<div class="column">'.html_safe
  Segment { text "Computer and Up" }
  text '</div>'.html_safe
  text '<div class="column">'.html_safe
  Segment { text "Computer and Up" }
  text '</div></div>'.html_safe
  4.times {
    text '<div class="tablet only column">'.html_safe
    Segment { text "Tablet Only Content" }
    text '</div>'.html_safe
  }
}

Header(size: :h2, aligned: "center") { text "Responsive Grid with Variations" }

# Stackable Divided Grid
Header(size: :h3, aligned: "center") { text "Stackable Divided Grid" }
Grid(columns: 2, stackable: true, divided: "true", container: true) {
  3.times {
    text '<div class="row">'.html_safe
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div></div>'.html_safe
  }
}

# Stackable Vertically Divided Grid
Header(size: :h3, aligned: "center") { text "Stackable Vertically Divided Grid" }
Grid(columns: 2, stackable: true, divided: "vertically", container: true) {
  3.times {
    text '<div class="row">'.html_safe
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div></div>'.html_safe
  }
}

# Celled Stackable Grid
Header(size: :h3, aligned: "center") { text "Celled Stackable Grid" }
Grid(stackable: true, celled: "true", container: true) {
  text '<div class="two column row">'.html_safe
  2.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
  text '</div>'.html_safe
  text '<div class="three column row">'.html_safe
  3.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
  text '</div>'.html_safe
  text '<div class="two column row">'.html_safe
  2.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
  text '</div>'.html_safe
}

# Consecutive Doubling Stackable Grid
Header(size: :h3, aligned: "center") { text "Consecutive Doubling Stackable Grid" }
2.times {
  Grid(columns: 3, doubling: true, stackable: true, container: true) {
    6.times {
      text '<div class="column">'.html_safe
      Segment { text "Content" }
      text '</div>'.html_safe
    }
  }
}

# Grid Container
Header(size: :h3, aligned: "center") { text "Grid Container" }
Grid(columns: 3, container: true) {
  6.times {
    text '<div class="column">'.html_safe
    Segment { text "Content" }
    text '</div>'.html_safe
  }
}

Header(size: :h1, aligned: "center") { text "Responsive Elements" }

# Responsive Vertical Divider
Header(size: :h3, aligned: "center") { text "Responsive Vertical Divider" }
Grid(columns: 2, stackable: true, relaxed: "very", container: true) {
  text '<div class="column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
  Divider(vertical: true) { text "Or" }
  text '<div class="column">'.html_safe
  Segment { text "Content" }
  text '</div>'.html_safe
}

# Responsive Table
Header(size: :h3, aligned: "center") { text "Responsive Table" }
Container {
  Table(celled: true) { |c|
    c.header { text '<tr><th>Employee</th><th>Correct Guesses</th></tr>'.html_safe }
    text '<tr><td><h4 class="ui image header"><img src="https://fomantic-ui.com/images/wireframe/square-image.png" class="ui mini rounded image"><div class="content">Lena<div class="sub header">Human Resources</div></div></h4></td><td>22</td></tr>'.html_safe
    text '<tr><td><h4 class="ui image header"><img src="https://fomantic-ui.com/images/wireframe/square-image.png" class="ui mini rounded image"><div class="content">Matthew<div class="sub header">Fabric Design</div></div></h4></td><td>15</td></tr>'.html_safe
    text '<tr><td><h4 class="ui image header"><img src="https://fomantic-ui.com/images/wireframe/square-image.png" class="ui mini rounded image"><div class="content">Lindsay<div class="sub header">Entertainment</div></div></h4></td><td>12</td></tr>'.html_safe
    text '<tr><td><h4 class="ui image header"><img src="https://fomantic-ui.com/images/wireframe/square-image.png" class="ui mini rounded image"><div class="content">Mark<div class="sub header">Executive</div></div></h4></td><td>11</td></tr>'.html_safe
  }
}

# Responsive Menu
Header(size: :h3, aligned: "center") { text "Responsive Menu" }
Menu(stackable: true) {
  text '<div class="item">'.html_safe
  Image(src: "/icon.png")
  text '</div>'.html_safe
  text '<a class="item">Features</a>'.html_safe
  text '<a class="item">Testimonials</a>'.html_safe
  text '<a class="item">Sign-in</a>'.html_safe
}

# Responsive Item
Header(size: :h3, aligned: "center") { text "Responsive Item" }
Container {
  text '<div class="ui relaxed divided items">'.html_safe
  3.times {
    text '<div class="item">'.html_safe
    text '<div class="ui small image"><img src="https://fomantic-ui.com/images/wireframe/image.png"></div>'.html_safe
    text '<div class="content">'.html_safe
    text '<a class="header">Content Header</a>'.html_safe
    text '<div class="meta"><a>Date</a> <a>Category</a></div>'.html_safe
    text '<div class="description">A description which may flow for several lines and give context to the content.</div>'.html_safe
    text '<div class="extra">'.html_safe
    text '<img src="https://fomantic-ui.com/images/wireframe/square-image.png" class="ui circular avatar image"> Username'.html_safe
    text '</div></div></div>'.html_safe
  }
  text '</div>'.html_safe
}

# Responsive Steps
Header(size: :h3, aligned: "center") { text "Responsive Steps" }
text '<div class="ui last container">'.html_safe
Step(size: "three") {
  text '<div class="step"><div class="content"><div class="title">Shipping</div><div class="description">Choose your shipping options</div></div></div>'.html_safe
  text '<div class="active step"><div class="content"><div class="title">Billing</div><div class="description">Enter billing information</div></div></div>'.html_safe
  text '<div class="disabled step"><div class="content"><div class="title">Confirm Order</div><div class="description">Review your order details</div></div></div>'.html_safe
}
text '</div>'.html_safe
