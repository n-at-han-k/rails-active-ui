text '<style>
  .hidden.menu { display: none; }
  .masthead.segment {
    min-height: 700px;
    padding: 1em 0em;
  }
  .masthead .logo.item img { margin-right: 1em; }
  .masthead .ui.menu .ui.button { margin-left: 0.5em; }
  .masthead h1.ui.header {
    margin-top: 3em;
    margin-bottom: 0em;
    font-size: 4em;
    font-weight: normal;
  }
  .masthead h2 { font-size: 1.7em; font-weight: normal; }
  .ui.vertical.stripe {
    padding: 8em 0em;
  }
  .ui.vertical.stripe h3 {
    font-size: 2em;
  }
  .ui.vertical.stripe .button + h3,
  .ui.vertical.stripe p + h3 {
    margin-top: 3em;
  }
  .ui.vertical.stripe .floated.image { clear: both; }
  .ui.vertical.stripe p { font-size: 1.33em; }
  .ui.vertical.stripe .horizontal.divider { margin: 3em 0em; }
  .quote.stripe.segment { padding: 0em; }
  .quote.stripe.segment .grid .column { padding-top: 5em; padding-bottom: 5em; }
  .footer.segment {
    padding: 5em 0em;
  }
  .secondary.pointing.menu .toc.item { display: none; }
  @media only screen and (max-width: 700px) {
    .ui.fixed.menu { display: none !important; }
    .secondary.pointing.menu .item,
    .secondary.pointing.menu .menu { display: none; }
    .secondary.pointing.menu .toc.item { display: block; }
    .masthead.segment { min-height: 350px; }
    .masthead h1.ui.header { font-size: 2em; margin-top: 1.5em; }
    .masthead h2 { margin-top: 0.5em; font-size: 1.5em; }
  }
</style>'.html_safe

# Fixed top menu
Menu(fixed: "top", inverted: true) {
  Container {
    text '<a href="#" class="header item">'.html_safe
    Image(src: "/icon.png", size: "mini")
    text " Project Name"
    text '</a>'.html_safe
    text '<a href="#" class="item">Home</a>'.html_safe
    text '<div class="ui simple dropdown item">'.html_safe
    text 'Dropdown '
    Icon(name: "dropdown")
    text '<div class="menu">'.html_safe
    text '<a class="item" href="#">Link Item</a>'.html_safe
    text '<a class="item" href="#">Link Item</a>'.html_safe
    text '<div class="divider"></div>'.html_safe
    text '<div class="header">Header Item</div>'.html_safe
    text '<div class="item"><i class="dropdown icon"></i>Sub Menu'.html_safe
    text '<div class="menu"><a class="item" href="#">Link Item</a><a class="item" href="#">Link Item</a></div>'.html_safe
    text '</div>'.html_safe
    text '<a class="item" href="#">Link Item</a>'.html_safe
    text '</div></div>'.html_safe
  }
}

# Masthead
Segment(inverted: true, vertical: true) {
  text '<div class="ui inverted masthead segment" style="min-height:700px; padding:1em 0">'.html_safe
  Container {
    Menu(inverted: true, pointing: true, secondary: true, size: "large") {
      text '<a class="toc item"><i class="sidebar icon"></i></a>'.html_safe
      text '<a class="active item">Home</a>'.html_safe
      text '<a class="item">Work</a>'.html_safe
      text '<a class="item">Company</a>'.html_safe
      text '<a class="item">Careers</a>'.html_safe
      text '<div class="right item">'.html_safe
      Button(inverted: true) { text "Log in" }
      Button(inverted: true) { text "Sign Up" }
      text '</div>'.html_safe
    }
  }
  text '</div>'.html_safe
}

# Stripe 1
Segment(vertical: true) {
  Grid(columns: 2, stackable: true, container: true) {
    text '<div class="row">'.html_safe
    text '<div class="column">'.html_safe
    text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non enim in turpis pulvinar facilisis.</p>".html_safe
    Header(size: :h3) { text "Breaking The Grid, Grabs Your Attention" }
    text "<p>Instead of focusing on content creation and hard work, we have learned how to master the art of doing nothing by providing massive amounts of whitespace and generic content that can seem conditions for the caused., or otherwise.</p>".html_safe
    text '</div>'.html_safe
    text '<div class="six wide right floated column">'.html_safe
    Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "large")
    text '</div>'.html_safe
    text '</div>'.html_safe

    text '<div class="row">'.html_safe
    text '<div class="center aligned column">'.html_safe
    Button(size: "huge") { text "Check Them Out" }
    text '</div></div>'.html_safe
  }
}

# Quote stripe
Segment(vertical: true) {
  Grid(celled: "true", equal_width: true, stackable: true, container: true) {
    text '<div class="row">'.html_safe
    text '<div class="column" style="padding-top:5em; padding-bottom:5em">'.html_safe
    Header(size: :h3) { text "What a Company" }
    text "<p>That is what they all say about us</p>".html_safe
    text '</div>'.html_safe
    text '<div class="column" style="padding-top:5em; padding-bottom:5em">'.html_safe
    Header(size: :h3) {
      text "An Excellent Companion"
    }
    text "<p>That is what they all say about us</p>".html_safe
    text '</div></div>'.html_safe
  }
}

# Stripe 2
Segment(vertical: true) {
  Container(text: true) {
    Header(size: :h3) { text "Did We Tell You About Our Bananas?" }
    text "<p>Yes I know you probably have, but I would like to elaborate on that.</p>".html_safe
    Button(size: "large") { text "I'm Still Quite Interested" }
    Divider(horizontal: true, section: true) { text "Or" }
    Header(size: :h3) { text "Did We Tell You About Our Bananas?" }
    text "<p>Yes I know you probably have, but I would like to elaborate on that.</p>".html_safe
    Button(size: "large") { text "I'm Still Quite Interested" }
  }
}

# Footer
Segment(inverted: true, vertical: true) {
  Container {
    Grid(divided: "true", inverted: true, stackable: true) {
      text '<div class="three wide column">'.html_safe
      Header(size: :h4, inverted: true) { text "About" }
      List(link: true, inverted: true) {
        text '<a href="#" class="item">Sitemap</a>'.html_safe
        text '<a href="#" class="item">Contact Us</a>'.html_safe
        text '<a href="#" class="item">Religious Coverage</a>'.html_safe
        text '<a href="#" class="item">Gazettes</a>'.html_safe
      }
      text '</div>'.html_safe

      text '<div class="three wide column">'.html_safe
      Header(size: :h4, inverted: true) { text "Services" }
      List(link: true, inverted: true) {
        text '<a href="#" class="item">Banana Pre-Order</a>'.html_safe
        text '<a href="#" class="item">DNA FAQ</a>'.html_safe
        text '<a href="#" class="item">How To Access</a>'.html_safe
        text '<a href="#" class="item">Favorite X-Men</a>'.html_safe
      }
      text '</div>'.html_safe

      text '<div class="seven wide column">'.html_safe
      Header(size: :h4, inverted: true) { text "Footer Header" }
      text "<p>Extra space for a call to action inside the footer that could help re-engage users.</p>".html_safe
      text '</div>'.html_safe
    }
  }
}
