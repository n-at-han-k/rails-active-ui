text '<style>
  .ui.menu .item img.logo { margin-right: 1.5em; }
  .main.container { margin-top: 7em; }
  .wireframe { margin-top: 2em; }
  .ui.footer.segment { margin: 5em 0em 0em; padding: 5em 0em; }
</style>'.html_safe

# Sidebar
Sidebar(inverted: true, visible: false) {
  text '<a class="item">1</a>'.html_safe
  text '<a class="item">2</a>'.html_safe
  text '<a class="item">3</a>'.html_safe
}

text '<div class="pusher">'.html_safe

# Fixed menu
Menu(fixed: "top", inverted: true) {
  Container {
    text '<a href="#" class="header item">'.html_safe
    Image(src: "/icon.png", size: "mini")
    text " Project Name"
    text '</a>'.html_safe
    text '<a href="#" class="item">Home</a>'.html_safe
    text '<a href="#" class="item">Work</a>'.html_safe
    text '<a href="#" class="item">Company</a>'.html_safe
    text '<a href="#" class="item">Careers</a>'.html_safe

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

# Main content
Container(text: true) {
  text '<div class="main container" style="margin-top:7em">'.html_safe

  Header(size: :h1) { text "Heading" }
  text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>".html_safe

  Header(size: :h2) { text "First Article" }
  Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "medium")
  text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>".html_safe
  text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper.</p>".html_safe

  Header(size: :h2) { text "Second Article" }
  Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "medium")
  text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>".html_safe
  text "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper.</p>".html_safe

  text '</div>'.html_safe
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

    Divider(inverted: true, section: true)
    Image(src: "/icon.png", size: "mini", centered: true)
    List(horizontal: true, inverted: true, divided: true, link: true, size: "small") {
      text '<a class="item" href="#">Site Map</a>'.html_safe
      text '<a class="item" href="#">Contact Us</a>'.html_safe
      text '<a class="item" href="#">Terms and Conditions</a>'.html_safe
      text '<a class="item" href="#">Privacy Policy</a>'.html_safe
    }
  }
}

text '</div>'.html_safe
