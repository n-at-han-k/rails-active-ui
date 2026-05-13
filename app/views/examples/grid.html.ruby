text '<style>
  code { background-color: #e0e0e0; padding: 0.25em 0.3em; font-family: "Lato"; font-weight: bold; }
  .container { padding: 5em 0em; }
  .ui.dividing.header, .first { margin-top: 5em; }
  .ui.dividing.header:first-child { margin-top: 0em; }
  h1, h3 { margin-top: 10em; }
  img { display: block; max-width: 100%; }
  img + img { margin-top: 0.5em; }
  .grid { position: relative; }
  .grid:before {
    position: absolute; top: 1rem; left: 1rem;
    background-color: #f0f0f0; content: "";
    width: calc(100% - 2rem); height: calc(100% - 2rem);
    box-shadow: 0px 0px 0px 1px #ddd inset;
  }
  .ui.divided.grid:before, .celled.grid:before { display: none; }
  .ui.aligned .column:after { display: none !important; }
  .grid .column:not(.row):not(.grid):after {
    background-color: rgba(86, 61, 124, .15);
    box-shadow: 0px 0px 0px 1px rgba(86, 61, 124, 0.2) inset;
    content: ""; display: block; min-height: 50px;
  }
  @media only screen and (max-width: 768px) {
    .stackable.grid:before { width: 100%; left: 0em; }
  }
</style>'.html_safe

Container(text: true) {
  Header(size: :h1, dividing: true) { text "Using Grids" }
  Header(size: :h3) { text "Container" }
  text "A container is a fixed width element that wraps your site's content. It remains a constant size and uses margin to center. Containers are the simplest way to center page content inside a grid."
}

Container {
  Grid {
    16.times { Column() }
  }
}

Container(text: true) {
  Header(size: :h3) { text "Text Container" }
  text "Sometimes you just need to put a single column of centered text on a page. A text container is a special type of container optimized for a single flowing column of text."
  text " "
  text "Text containers do not need to use grids and help simplify basic page layouts."

  Grid(columns: 1) {
    Column()
  }

  Header(size: :h1, dividing: true) { text "Grid Content" }

  Header(size: :h3) { text "Column Flow" }
  text "A grid does not necessarily need to specify rows. If you include columns as direct child of ui grid content will automatically flow to the next row when all the grid columns are taken in the current row."

  Grid {
    8.times { Column(width: 4) }
  }

  Header(size: :h3) { text "Clearing Rows" }
  text "Adding row wrappers allow you to manually specify you want a new row to begin."

  Grid(columns: 3) {
    Column()
    Row {
      Column()
      Column()
      Column()
    }
  }

  Header(size: :h3) { text "Specifying Row Width" }
  text "Specifying a grid column count will divide columns into rows of predetermined column count."
  Grid(columns: 3) {
    6.times { Column { text "column" } }
  }

  Header(size: :h3) { text "Specifying Column Width" }
  text "You can also specify column widths for each column individually"
  Grid(columns: 3) {
    Column(width: 4) { text "four wide column" }
    Column(width: 8) { text "eight wide column" }
    Column(width: 4) { text "four wide column" }
  }

  Header(size: :h3) { text "Special Variations" }
  text "Some special variations that format grids like tables require you to specify rows."

  Divider(horizontal: true, section: true) { text "Celled Grid" }
  Grid(celled: "true") {
    Row {
      4.times { Column(width: 4) }
    }
    Row {
      4.times { Column(width: 4) }
    }
  }

  Divider(horizontal: true, section: true) { text "Internally Celled Grid" }
  Grid(celled: "internally") {
    Row {
      4.times { Column(width: 4) }
    }
    Row {
      4.times { Column(width: 4) }
    }
  }

  Divider(horizontal: true, section: true) { text "Divided Grid" }
  Grid(divided: "true") {
    Row {
      4.times { Column(width: 4) }
    }
    Row {
      4.times { Column(width: 4) }
    }
  }

  Divider(horizontal: true, section: true) { text "Vertically Divided Grid" }
  Grid(divided: "vertically") {
    Row {
      4.times { Column(width: 4) }
    }
    Row {
      4.times { Column(width: 4) }
    }
  }

  Header(size: :h1, dividing: true) { text "Adjusting Grids" }

  Header(size: :h3) { text "Centering Content" }
  text "If a row does not take up all sixteen grid columns, you can use a ui centered grid, centered row, or centered column to center the column contents inside the grid."
  Grid(columns: 2, centered: true) {
    Column()
    Row(columns: 4, centered: true) {
      Column()
      Column()
    }
  }

  Header(size: :h3) { text "Floating Rows" }
  text "Since Fomantic UI's grid is based on flex box, a left floated item should come first, and a right floated item last in its row."
  Grid {
    Column(width: 6, floated: "left") {
      Segment { text "Left floated" }
    }
    Column(width: 6, floated: "right") {
      Segment { text "Right floated" }
    }
  }

  Header(size: :h3) { text "Text Alignment" }
  text "You can specify text alignment using alignment variations on a grid, row, or column level."
  Grid {
    Column(width: 8, aligned: "right") { text "right aligned column" }
    Column(width: 8, aligned: "left") { text "left aligned column" }
    Row(columns: 2, aligned: "center") {
      Column { text "center aligned row" }
      Column { text "center aligned row" }
    }
    Column(width: 16, aligned: "right") { text "right aligned column" }
  }

  Header(size: :h3) { text "Vertical Alignment" }
  text "You can specify vertical alignment on a grid, row, or column level."
  Grid(columns: 4, centered: true, aligned: "middle") {
    Row {
      Column {
        Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
      }
      Column {
        Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
        Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
      }
      Column {
        Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
      }
    }
  }

  Header(size: :h3) { text "Equal Width Columns" }
  text "Specifying an equal width grid will automatically determine column sizes to fit evenly inside one row"
  Grid(equal_width: true) {
    Row {
      4.times { Column { text "column" } }
    }
    Row {
      3.times { Column { text "column" } }
    }
  }

  Header(size: :h1) { text "Responsive Patterns" }

  Header(size: :h3) { text "Doubling" }
  text "You can set columns to double in width at each device jump"
  Grid(columns: 5, doubling: true) {
    5.times { Column { text "column" } }
  }

  Header(size: :h3) { text "Stackable" }
  text "You can set columns to stack on mobile"
  Grid(columns: 3, stackable: true) {
    3.times { Column { text "column" } }
  }

  Header(size: :h3) { text "Responsive Width Adjustments" }
  text "You can specify columns to appear at different widths on different screens"
  Grid {
    5.times { Column(mobile: 8, tablet: 6, computer: 4) }
  }
  Grid {
    4.times { Column(width: 4, large_screen: 2, widescreen: 1) }
  }

  Header(size: :h3) { text "Specifying Device Visibility" }
  text "You can specify columns to appear only a particular screen"
  Grid {
    Row(columns: 2, only: "computer") {
      Column(width: 10) { text "ten wide column computer only" }
      Column(width: 6) { text "six wide column computer only" }
    }
    Column(width: 16, only: "mobile") { text "sixteen wide column mobile only" }
    Row(columns: 3, only: "computer") {
      3.times { Column { text "computer only row" } }
    }
    Row(columns: 2, only: "mobile") {
      2.times { Column { text "mobile only column" } }
    }
    Row(columns: 2) {
      2.times { Column { text "column" } }
    }
  }
}
