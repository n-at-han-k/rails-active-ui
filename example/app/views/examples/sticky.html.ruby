text '<style>
  body { background-color: #fff; }
  .main.container { margin-top: 2em; }
  .main.menu {
    margin-top: 4em;
    border-radius: 0;
    border: none;
    box-shadow: none;
    transition: box-shadow 0.5s ease, padding 0.5s ease;
  }
  .main.menu .item img.logo { margin-right: 1.5em; }
  .overlay { float: left; margin: 0em 3em 1em 0em; }
  .overlay .menu { position: relative; left: 0; transition: left 0.5s ease; }
  .main.menu.fixed { background-color: #fff; border: 1px solid #ddd; box-shadow: 0px 3px 5px rgba(0,0,0,0.2); }
  .overlay.fixed .menu { left: 800px; }
  .text.container .left.floated.image { margin: 2em 2em 2em -4em; }
  .text.container .right.floated.image { margin: 2em -4em 2em 2em; }
  .ui.footer.segment { margin: 5em 0em 0em; padding: 5em 0em; }
</style>'.html_safe

# Title area
Container(text: true) {
  Header(size: :h1) { text "Sticky Example" }
  text "<p>This example shows how to use lazy loaded images, a sticky menu, and a simple text container</p>".html_safe
}

# Main menu
Menu(borderless: true, text: true) {
  Container(text: true) {
    text '<div class="header item">'.html_safe
    text '<img class="logo" src="/icon.png">'.html_safe
    text " Project Name"
    text '</div>'.html_safe
    text '<a href="#" class="item">Blog</a>'.html_safe
    text '<a href="#" class="item">Articles</a>'.html_safe
    text '<a href="#" class="ui right floated dropdown item">'.html_safe
    text 'Dropdown '
    Icon(name: "dropdown")
    text '<div class="menu">'.html_safe
    text '<div class="item">Link Item</div>'.html_safe
    text '<div class="item">Link Item</div>'.html_safe
    text '<div class="divider"></div>'.html_safe
    text '<div class="header">Header Item</div>'.html_safe
    text '<div class="item"><i class="dropdown icon"></i>Sub Menu'.html_safe
    text '<div class="menu"><div class="item">Link Item</div><div class="item">Link Item</div></div>'.html_safe
    text '</div>'.html_safe
    text '<div class="item">Link Item</div>'.html_safe
    text '</div></a>'.html_safe
  }
}

# Text content
Container(text: true) {
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe

  # Overlay sidebar menu
  text '<div class="overlay">'.html_safe
  Menu(vertical: true, labeled_icon: true) {
    text '<a class="item"><i class="twitter icon"></i> Tweet</a>'.html_safe
    text '<a class="item"><i class="facebook icon"></i> Share</a>'.html_safe
    text '<a class="item"><i class="mail icon"></i> E-mail</a>'.html_safe
  }
  text '</div>'.html_safe

  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe

  Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "medium")

  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe

  Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "medium")

  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>".html_safe
  text "<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>".html_safe
}

# Footer
Segment(inverted: true, vertical: true) {
  Container {
    Grid(divided: "true", inverted: true, stackable: true) {
      text '<div class="three wide column">'.html_safe
      Header(size: :h4, inverted: true) { text "Group 1" }
      List(link: true, inverted: true) {
        text '<a href="#" class="item">Link One</a>'.html_safe
        text '<a href="#" class="item">Link Two</a>'.html_safe
        text '<a href="#" class="item">Link Three</a>'.html_safe
        text '<a href="#" class="item">Link Four</a>'.html_safe
      }
      text '</div>'.html_safe

      text '<div class="three wide column">'.html_safe
      Header(size: :h4, inverted: true) { text "Group 2" }
      List(link: true, inverted: true) {
        text '<a href="#" class="item">Link One</a>'.html_safe
        text '<a href="#" class="item">Link Two</a>'.html_safe
        text '<a href="#" class="item">Link Three</a>'.html_safe
        text '<a href="#" class="item">Link Four</a>'.html_safe
      }
      text '</div>'.html_safe

      text '<div class="three wide column">'.html_safe
      Header(size: :h4, inverted: true) { text "Group 3" }
      List(link: true, inverted: true) {
        text '<a href="#" class="item">Link One</a>'.html_safe
        text '<a href="#" class="item">Link Two</a>'.html_safe
        text '<a href="#" class="item">Link Three</a>'.html_safe
        text '<a href="#" class="item">Link Four</a>'.html_safe
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
