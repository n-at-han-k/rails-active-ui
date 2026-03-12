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
  text '<h3 class="first">Container</h3>'.html_safe
  text "<p>A container is a fixed width element that wraps your site's content. It remains a constant size and uses <b>margin</b> to center. Containers are the simplest way to center page content inside a grid.</p>".html_safe
}

Container {
  Grid {
    16.times { text '<div class="column"></div>'.html_safe }
  }
}

Container(text: true) {
  text '<h3 class="first">Text Container</h3>'.html_safe
  text "<p>Sometimes you just need to put a single column of centered text on a page. A <code>text container</code> is a special type of container optimized for a single flowing column of text.</p>".html_safe
  text "<p>Text containers <b>do not need to use grids</b> and help simplify basic page layouts.</p>".html_safe

  Grid(columns: 1) {
    text '<div class="column"></div>'.html_safe
  }

  Header(size: :h1, dividing: true) { text "Grid Content" }

  text '<h3 class="first">Column Flow</h3>'.html_safe
  text "<p>A grid does not necessarily need to specify rows. If you include <code>columns</code> as direct child of <code>ui grid</code> content will automatically flow to the next row when all the grid columns are taken in the current row.</p>".html_safe

  Grid {
    8.times { text '<div class="four wide column"></div>'.html_safe }
  }

  text "<h3>Clearing Rows</h3>".html_safe
  text "<p>Adding row wrappers allow you to manually specify you want a new row to begin.</p>".html_safe

  Grid(columns: 3) {
    text '<div class="column"></div>'.html_safe
    text '<div class="row">'.html_safe
    text '<div class="column"></div>'.html_safe
    text '<div class="column"></div>'.html_safe
    text '<div class="column"></div>'.html_safe
    text '</div>'.html_safe
  }

  text "<h3>Specifying Row Width</h3>".html_safe
  text "<p>Specifying a grid column count will divide columns into rows of predetermined column count.</p>".html_safe
  Grid(columns: 3) {
    6.times { text '<div class="column">column</div>'.html_safe }
  }

  text "<h3>Specifying Column Width</h3>".html_safe
  text "<p>You can also specify column widths for each column individually</p>".html_safe
  Grid(columns: 3) {
    text '<div class="four wide column">four wide column</div>'.html_safe
    text '<div class="eight wide column">eight wide column</div>'.html_safe
    text '<div class="four wide column">four wide column</div>'.html_safe
  }

  text "<h3>Special Variations</h3>".html_safe
  text "<p>Some special variations that format grids like tables require you to specify rows.</p>".html_safe

  Divider(horizontal: true, section: true) { text "Celled Grid" }
  Grid(celled: "true") {
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
  }

  Divider(horizontal: true, section: true) { text "Internally Celled Grid" }
  Grid(celled: "internally") {
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
  }

  Divider(horizontal: true, section: true) { text "Divided Grid" }
  Grid(divided: "true") {
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
  }

  Divider(horizontal: true, section: true) { text "Vertically Divided Grid" }
  Grid(divided: "vertically") {
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
    text '<div class="row">'.html_safe
    4.times { text '<div class="four wide column"></div>'.html_safe }
    text '</div>'.html_safe
  }

  Header(size: :h1, dividing: true) { text "Adjusting Grids" }

  text '<h3 class="first">Centering Content</h3>'.html_safe
  text "<p>If a row does not take up all sixteen grid columns, you can use a <code>ui centered grid</code>, <code>centered row</code>, or <code>centered column</code> to center the column contents inside the grid.</p>".html_safe
  Grid(columns: 2, centered: true) {
    text '<div class="column"></div>'.html_safe
    text '<div class="four column centered row">'.html_safe
    text '<div class="column"></div>'.html_safe
    text '<div class="column"></div>'.html_safe
    text '</div>'.html_safe
  }

  text "<h3>Floating Rows</h3>".html_safe
  text "<p>Since Fomantic UI's grid is based on flex box, a <code>left floated</code> item should come first, and a <code>right floated</code> item last in its row.</p>".html_safe
  Grid {
    text '<div class="left floated six wide column">'.html_safe
    Segment { text "Left floated" }
    text '</div>'.html_safe
    text '<div class="right floated six wide column">'.html_safe
    Segment { text "Right floated" }
    text '</div>'.html_safe
  }

  text "<h3>Text Alignment</h3>".html_safe
  text "<p>You can specify text alignment using alignment variations on a grid, row, or column level.</p>".html_safe
  Grid {
    text '<div class="right aligned eight wide column">right aligned column</div>'.html_safe
    text '<div class="left aligned eight wide column">left aligned column</div>'.html_safe
    text '<div class="center aligned two column row">'.html_safe
    text '<div class="column">center aligned row</div>'.html_safe
    text '<div class="column">center aligned row</div>'.html_safe
    text '</div>'.html_safe
    text '<div class="sixteen wide right aligned column">right aligned column</div>'.html_safe
  }

  text "<h3>Vertical Alignment</h3>".html_safe
  text "<p>You can specify vertical alignment on a grid, row, or column level.</p>".html_safe
  text '<div class="ui middle aligned four column centered grid">'.html_safe
  text '<div class="row">'.html_safe
  text '<div class="column">'.html_safe
  Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
  text '</div>'.html_safe
  text '<div class="column">'.html_safe
  Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
  Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
  text '</div>'.html_safe
  text '<div class="column">'.html_safe
  Image(src: "https://fomantic-ui.com/images/wireframe/image.png")
  text '</div></div></div>'.html_safe

  text "<h3>Equal Width Columns</h3>".html_safe
  text "<p>Specifying an <code>equal width grid</code> will automatically determine column sizes to fit evenly inside one row</p>".html_safe
  Grid(equal_width: true) {
    text '<div class="row">'.html_safe
    4.times { text '<div class="column">column</div>'.html_safe }
    text '</div>'.html_safe
    text '<div class="row">'.html_safe
    3.times { text '<div class="column">column</div>'.html_safe }
    text '</div>'.html_safe
  }

  text "<h1>Responsive Patterns</h1>".html_safe

  text '<h3 class="first">Doubling</h3>'.html_safe
  text "<p>You can set columns to double in width at each device jump</p>".html_safe
  Grid(columns: 5, doubling: true) {
    5.times { text '<div class="column">column</div>'.html_safe }
  }

  text "<h3>Stackable</h3>".html_safe
  text "<p>You can set columns to stack on mobile</p>".html_safe
  Grid(columns: 3, stackable: true) {
    3.times { text '<div class="column">column</div>'.html_safe }
  }

  text "<h3>Responsive Width Adjustments</h3>".html_safe
  text "<p>You can specify columns to appear at different widths on different screens</p>".html_safe
  Grid {
    5.times { text '<div class="eight wide mobile six wide tablet four wide computer column"></div>'.html_safe }
  }
  Grid {
    4.times { text '<div class="four wide two wide large screen one wide widescreen column"></div>'.html_safe }
  }

  text "<h3>Specifying Device Visibility</h3>".html_safe
  text "<p>You can specify columns to appear only a particular screen</p>".html_safe
  Grid {
    text '<div class="two column computer only row">'.html_safe
    text '<div class="ten wide column">ten wide column computer only</div>'.html_safe
    text '<div class="six wide column">six wide column computer only</div>'.html_safe
    text '</div>'.html_safe
    text '<div class="sixteen wide mobile only column">sixteen wide column mobile only</div>'.html_safe
    text '<div class="three column computer only row">'.html_safe
    3.times { text '<div class="column">computer only row</div>'.html_safe }
    text '</div>'.html_safe
    text '<div class="two column mobile only row">'.html_safe
    2.times { text '<div class="column">mobile only column</div>'.html_safe }
    text '</div>'.html_safe
    text '<div class="two column row">'.html_safe
    2.times { text '<div class="column">column</div>'.html_safe }
    text '</div>'.html_safe
  }
}
