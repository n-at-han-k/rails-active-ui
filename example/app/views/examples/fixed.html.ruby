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
    MenuItem(href: "#") {
      Image(src: "/icon.png", size: "mini")
      text " Project Name"
    }
    MenuItem(href: "#") { text "Home" }
    Dropdown {
      text "Dropdown "
      Icon(name: "dropdown")
      MenuMenu {
        MenuItem(href: "#") { text "Link Item" }
        MenuItem(href: "#") { text "Link Item" }
        Divider()
        MenuItem(header: true) { text "Header Item" }
        MenuItem(dropdown: true) {
          Icon(name: "dropdown")
          text "Sub Menu"
          MenuMenu {
            MenuItem(href: "#") { text "Link Item" }
            MenuItem(href: "#") { text "Link Item" }
          }
        }
        MenuItem(href: "#") { text "Link Item" }
      }
    }
  }
}

# Masthead
Segment(inverted: true, vertical: true) {
  Container {
    Menu(inverted: true, pointing: true, secondary: true, size: "large") {
      MenuItem(href: "#", icon: "sidebar") { text "" }
      MenuItem(href: "#", active: true) { text "Home" }
      MenuItem(href: "#") { text "Work" }
      MenuItem(href: "#") { text "Company" }
      MenuItem(href: "#") { text "Careers" }
      MenuMenu(position: "right") {
        Button(inverted: true) { text "Log in" }
        Button(inverted: true) { text "Sign Up" }
      }
    }
  }
}

# Stripe 1
Segment(vertical: true) {
  Grid(columns: 2, stackable: true, container: true) {
    Row {
      Column {
        text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non enim in turpis pulvinar facilisis."
        Header(size: :h3) { text "Breaking The Grid, Grabs Your Attention" }
        text "Instead of focusing on content creation and hard work, we have learned how to master the art of doing nothing by providing massive amounts of whitespace and generic content that can seem conditions for the caused., or otherwise."
      }
      Column(width: 6, floated: "right") {
        Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "large")
      }
    }

    Row {
      Column(aligned: "center") {
        Button(size: "huge") { text "Check Them Out" }
      }
    }
  }
}

# Quote stripe
Segment(vertical: true) {
  Grid(celled: "true", equal_width: true, stackable: true, container: true) {
    Row {
      Column {
        Header(size: :h3) { text "What a Company" }
        text "That is what they all say about us"
      }
      Column {
        Header(size: :h3) { text "An Excellent Companion" }
        text "That is what they all say about us"
      }
    }
  }
}

# Stripe 2
Segment(vertical: true) {
  Container(text: true) {
    Header(size: :h3) { text "Did We Tell You About Our Bananas?" }
    text "Yes I know you probably have, but I would like to elaborate on that."
    Button(size: "large") { text "I'm Still Quite Interested" }
    Divider(horizontal: true, section: true) { text "Or" }
    Header(size: :h3) { text "Did We Tell You About Our Bananas?" }
    text "Yes I know you probably have, but I would like to elaborate on that."
    Button(size: "large") { text "I'm Still Quite Interested" }
  }
}

# Footer
Segment(inverted: true, vertical: true) {
  Container {
    Grid(divided: "true", inverted: true, stackable: true) {
      Column(width: 3) {
        Header(size: :h4, inverted: true) { text "About" }
        List(link: true, inverted: true) {
          MenuItem(href: "#") { text "Sitemap" }
          MenuItem(href: "#") { text "Contact Us" }
          MenuItem(href: "#") { text "Religious Coverage" }
          MenuItem(href: "#") { text "Gazettes" }
        }
      }

      Column(width: 3) {
        Header(size: :h4, inverted: true) { text "Services" }
        List(link: true, inverted: true) {
          MenuItem(href: "#") { text "Banana Pre-Order" }
          MenuItem(href: "#") { text "DNA FAQ" }
          MenuItem(href: "#") { text "How To Access" }
          MenuItem(href: "#") { text "Favorite X-Men" }
        }
      }

      Column(width: 7) {
        Header(size: :h4, inverted: true) { text "Footer Header" }
        text "Extra space for a call to action inside the footer that could help re-engage users."
      }
    }
  }
}
