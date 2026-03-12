Grid(container: true) {
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Bootstrap Migration" }
  text '</div></div>'.html_safe

  # Jumbotron
  text '<div class="row"><div class="column">'.html_safe
  Message {
    Header(size: :h1) { text "Hello, world!" }
    text "<p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>".html_safe
    Button(color: "blue", href: "#") { text "Learn more &raquo;".html_safe }
  }
  text '</div></div>'.html_safe

  # Buttons
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Buttons" }
  Button(href: "#") { text "Default" }
  Button(variant: "primary", href: "#") { text "Primary" }
  Button(href: "#") { text "Basic" }
  Button(href: "#", color: "green") { text "Success" }
  Button(href: "#", color: "red") { text "Error" }
  text '</div></div>'.html_safe

  # Thumbnails
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Thumbnails" }
  Divider()
  Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: "small")
  text '</div></div>'.html_safe

  # Dropdown
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Dropdown" }
  Divider()
  Dropdown(selection: true, placeholder: "Select", name: "selection") {
    text '<div class="item" data-value="male">Male</div>'.html_safe
    text '<div class="item" data-value="female">Female</div>'.html_safe
  }
  Menu(vertical: true) {
    text '<a class="active item">Friends</a>'.html_safe
    text '<a class="item">Messages</a>'.html_safe
    text '<div class="ui dropdown item">'.html_safe
    Icon(name: "dropdown")
    text " More"
    text '<div class="menu">'.html_safe
    text '<a class="item">Edit Profile</a>'.html_safe
    text '<a class="item">Choose Language</a>'.html_safe
    text '<a class="item">Account Settings</a>'.html_safe
    text '</div></div>'.html_safe
  }
  text '</div></div>'.html_safe

  # Badges
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Badges" }
  Divider()
  Menu(vertical: true) {
    text '<div class="item">One '.html_safe
    Label { text "2" }
    text '</div>'.html_safe
    text '<div class="item">Two '.html_safe
    Label { text "2" }
    text '</div>'.html_safe
    text '<div class="item">Three '.html_safe
    Label { text "2" }
    text '</div>'.html_safe
  }
  text '</div></div>'.html_safe

  # Tables
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Tables" }
  Grid(columns: 2) {
    text '<div class="column">'.html_safe
    Table { |c|
      c.header { text '<tr><th>Name</th><th>Premium Plan</th></tr>'.html_safe }
      text '<tr><td>John</td><td>No</td></tr>'.html_safe
      text '<tr><td>Jamie</td><td>Yes</td></tr>'.html_safe
      text '<tr><td>Jill</td><td>Yes</td></tr>'.html_safe
    }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Table(basic: "true") { |c|
      c.header { text '<tr><th>Name</th><th>Premium Plan</th></tr>'.html_safe }
      text '<tr><td>John</td><td>No</td></tr>'.html_safe
      text '<tr><td>Jamie</td><td>Yes</td></tr>'.html_safe
      text '<tr><td>Jill</td><td>Yes</td></tr>'.html_safe
    }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Table(definition: true) { |c|
      c.header { text '<tr><th>Name</th><th>Premium Plan</th></tr>'.html_safe }
      text '<tr><td>John</td><td>No</td></tr>'.html_safe
      text '<tr><td>Jamie</td><td>Yes</td></tr>'.html_safe
      text '<tr><td>Jill</td><td>Yes</td></tr>'.html_safe
    }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Table(basic: "very") { |c|
      c.header { text '<tr><th>Name</th><th>Premium Plan</th></tr>'.html_safe }
      text '<tr><td>John</td><td>No</td></tr>'.html_safe
      text '<tr><td>Jamie</td><td>Yes</td></tr>'.html_safe
      text '<tr><td>Jill</td><td>Yes</td></tr>'.html_safe
    }
    text '</div>'.html_safe

    text '<div class="sixteen wide column">'.html_safe
    Table(celled: true, structured: true) { |c|
      c.header {
        text '<tr><th rowspan="2">Name</th><th rowspan="2">Type</th><th rowspan="2">Files</th><th colspan="3">Languages</th></tr>'.html_safe
        text '<tr><th>Ruby</th><th>JavaScript</th><th>Python</th></tr>'.html_safe
      }
      text '<tr><td>Alpha Team</td><td>Project 1</td><td>2</td><td><i class="large green checkmark icon"></i></td><td></td><td></td></tr>'.html_safe
      text '<tr><td rowspan="3">Beta Team</td><td>Project 1</td><td>52</td><td><i class="large green checkmark icon"></i></td><td></td><td></td></tr>'.html_safe
      text '<tr><td>Project 2</td><td>12</td><td></td><td><i class="large green checkmark icon"></i></td><td></td></tr>'.html_safe
      text '<tr><td>Project 3</td><td>21</td><td><i class="large green checkmark icon"></i></td><td></td><td></td></tr>'.html_safe
    }
    text '</div>'.html_safe
  }
  text '</div></div>'.html_safe

  # Alerts
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Alerts" }
  Divider()
  Message(type: "positive") { text "Well done! You successfully read this important alert message." }
  Message(type: "info") { text "Heads up! This alert needs your attention, but it's not super important." }
  Message(type: "warning") { text "Warning! Best check yo self, you're not looking too good." }
  Message(type: "error") { text "Oh snap! Change a few things up and try submitting again." }
  text '</div></div>'.html_safe

  # List groups
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "List groups" }
  Divider()
  Grid(columns: 3) {
    text '<div class="column">'.html_safe
    text '<div class="ui segments">'.html_safe
    Segment { text "<p>Cras justo odio</p>".html_safe }
    Segment { text "<p>Dapibus ac facilisis in</p>".html_safe }
    Segment { text "<p>Morbi leo risus</p>".html_safe }
    Segment { text "<p>Porta ac consectetur ac</p>".html_safe }
    Segment { text "<p>Vestibulum at eros</p>".html_safe }
    text '</div></div>'.html_safe

    text '<div class="column">'.html_safe
    Menu(vertical: true, fluid: true) {
      text '<a class="item"><p>Cras justo odio</p></a>'.html_safe
      text '<a class="item"><p>Vestibulum at eros</p></a>'.html_safe
    }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Menu(vertical: true, fluid: true) {
      text '<a class="item">'.html_safe
      Header(size: :h1, size: "medium") { text "List group item heading" }
      text "<p>Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>".html_safe
      text '</a>'.html_safe
      text '<a class="item">'.html_safe
      Header(size: :h1, size: "medium") { text "List group item heading" }
      text "<p>Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>".html_safe
      text '</a>'.html_safe
      text '<a class="item">'.html_safe
      Header(size: :h1, size: "medium") { text "List group item heading" }
      text "<p>Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>".html_safe
      text '</a>'.html_safe
    }
    text '</div>'.html_safe
  }
  text '</div></div>'.html_safe

  # Panels
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Panels" }
  Divider()
  Grid(columns: 3) {
    text '<div class="column">'.html_safe
    text '<div class="ui segments">'.html_safe
    Segment(color: "red") { text "One" }
    Segment(color: "blue") { text "Two" }
    Segment(color: "green") { text "Three" }
    text '</div></div>'.html_safe

    text '<div class="column">'.html_safe
    text '<div class="ui raised segments">'.html_safe
    Segment { text "One" }
    Segment { text "Two" }
    Segment { text "Three" }
    text '</div></div>'.html_safe

    text '<div class="column">'.html_safe
    text '<div class="ui stacked segments">'.html_safe
    Segment { text "One" }
    Segment { text "Two" }
    Segment { text "Three" }
    text '</div></div>'.html_safe

    text '<div class="column">'.html_safe
    Message(type: "error", attached: "top") { text "Error" }
    Segment(attached: "bottom") { text "Panel content" }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Message(type: "info", attached: "top") { text "Info" }
    Segment(attached: "bottom") { text "Panel content" }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Message(type: "success", attached: "top") { text "Success" }
    Segment(attached: "bottom") { text "Panel content" }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Header(size: :h4, inverted: true, attached: "top") { text "Header" }
    Segment(attached: "bottom") { text "Panel content" }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Header(size: :h4, block_header: true, attached: "top") { text "Header" }
    Segment(attached: "bottom") { text "Panel content" }
    text '</div>'.html_safe

    text '<div class="column">'.html_safe
    Header(size: :h4, attached: "top") { text "Header" }
    Segment(attached: "bottom") { text "Panel content" }
    text '</div>'.html_safe
  }
  text '</div></div>'.html_safe

  # Wells
  text '<div class="row"><div class="column">'.html_safe
  Header(size: :h1) { text "Wells" }
  Divider()
  Segment { text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>".html_safe }
  Segment(secondary: true) { text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>".html_safe }
  Segment(tertiary: true) { text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>".html_safe }
  Segment(inverted: true) { text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>".html_safe }
  Segment(inverted: true, secondary: true) { text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>".html_safe }
  Segment(inverted: true, tertiary: true) { text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>".html_safe }
  text '</div></div>'.html_safe
}
