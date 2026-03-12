text '<style>
  h2 { margin: 2em 0em; }
  .ui.container { padding-top: 5em; padding-bottom: 5em; }
</style>'.html_safe

Container {
  Header(size: :h2) { text "Attached Content" }
  Grid(columns: 3) {
    # Column 1 — attached segments
    text '<div class="column">'.html_safe
    Segment(attached: "top") { text "Segment 1" }
    Segment(attached: "") { text "Segment 2" }
    Segment(attached: "") { text "Segment 2" }
    Segment(attached: "bottom") { text "Segment 3" }

    text '<div class="ui segments">'.html_safe
    Segment { text "<p>Top</p>".html_safe }
    text '<div class="ui segments">'.html_safe
    Segment { text "<p>Nested Top</p>".html_safe }
    Segment { text "<p>Nested Middle</p>".html_safe }
    Segment { text "<p>Nested Bottom</p>".html_safe }
    text '</div>'.html_safe
    Segment { text "<p>Middle</p>".html_safe }
    text '<div class="ui horizontal segments">'.html_safe
    Segment { text "<p>Top</p>".html_safe }
    Segment { text "<p>Middle</p>".html_safe }
    Segment { text "<p>Bottom</p>".html_safe }
    text '</div>'.html_safe
    Segment { text "<p>Bottom</p>".html_safe }
    text '</div>'.html_safe
    text '</div>'.html_safe

    # Column 2 — attached tables
    text '<div class="column">'.html_safe
    Table(basic: "true", attached: "top") { |c|
      c.header {
        text '<tr><th>Header</th><th>Header</th><th>Header</th></tr>'.html_safe
      }
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    }
    Table(attached: "") {
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    }
    Table(celled: true, selectable: true, attached: "") {
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    }
    Table(celled: true, attached: "bottom") { |c|
      c.header {
        text '<tr><th>Header</th><th>Header</th><th>Header</th></tr>'.html_safe
      }
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
      text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    }
    text '</div>'.html_safe

    # Column 3 — attached menus
    text '<div class="column">'.html_safe
    Menu(attached: "top", items: 3) {
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
    }
    Menu(attached: "", items: 3) {
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
    }
    Menu(attached: "", items: 3) {
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
    }
    Menu(attached: "bottom", items: 3) {
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
    }

    Menu(tabular: true, attached: "top") {
      text '<a class="active item">Active Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
    }
    Segment(attached: "bottom") { text "Segment" }

    Menu(attached: "top") {
      text '<a class="active item">Active Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
      text '<a class="item">Item</a>'.html_safe
    }
    Segment(attached: "bottom") { text "Segment" }
    text '</div>'.html_safe
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
    text '<a class="item">Item</a>'.html_safe
    text '<a class="item">Item</a>'.html_safe
    text '<a class="item">Item</a>'.html_safe
  }
  Segment(attached: "") { text "1" }
  Message(attached: "", icon: "help circle", type: "info") {
    text '<div class="content">Message</div>'.html_safe
  }
  Table(attached: "bottom") { |c|
    c.header {
      text '<tr><th>Header</th><th>Header</th><th>Header</th></tr>'.html_safe
    }
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
  }

  Divider(section: true)

  Message(attached: "top", icon: "attention", type: "warning") {
    text '<div class="content">Message</div>'.html_safe
  }
  Table(attached: "") { |c|
    c.header {
      text '<tr><th>Header</th><th>Header</th><th>Header</th></tr>'.html_safe
    }
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
  }
  Menu(attached: "bottom", items: 3) {
    text '<a class="item">Item</a>'.html_safe
    text '<a class="item">Item</a>'.html_safe
    text '<a class="item">Item</a>'.html_safe
  }

  Divider(section: true)

  Menu(inverted: true, attached: "top", items: 3) {
    text '<a class="item">Item</a>'.html_safe
    text '<a class="item">Item</a>'.html_safe
    text '<a class="item">Item</a>'.html_safe
  }
  Table(inverted: true, attached: "") { |c|
    c.header {
      text '<tr><th>Header</th><th>Header</th><th>Header</th></tr>'.html_safe
    }
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
    text '<tr><td>Cell</td><td>Cell</td><td>Cell</td></tr>'.html_safe
  }
  Segment(inverted: true, attached: "bottom") { text "Segment" }
}
