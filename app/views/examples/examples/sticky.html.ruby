Wrapper(style: "contain: layout style;") {
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
    Header(size: :h1) { "Sticky Example" }
    text "This example shows how to use lazy loaded images, a sticky menu, and a simple text container"
  }
  
  # Main menu
  Menu(borderless: true, text: true) {
    Container(text: true) {
      MenuItem(header: true) {
        Image(src: "/icon.png", size: "mini")
        text " Project Name"
      }
      MenuItem(href: "#") { "Blog" }
      MenuItem(href: "#") { "Articles" }
      Dropdown(floating: true) {
        MenuItem { "Link Item" }
        MenuItem { "Link Item" }
        Divider()
        MenuItem(header: true) { "Header Item" }
        MenuItem { "Link Item" }
      }
    }
  }
  
  # Text content
  Container(text: true) {
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
  
    Overlay {
      Menu(vertical: true, labeled_icon: true) {
        MenuItem(href: "#", icon: "twitter") { " Tweet" }
        MenuItem(href: "#", icon: "facebook") { " Share" }
        MenuItem(href: "#", icon: "mail") { " E-mail" }
      }
    }
  
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
  
    Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "medium")
  
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
  
    Image(src: "https://fomantic-ui.com/images/wireframe/square-image.png", size: "medium")
  
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas."
    text " "
    text "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas."
  }
  
  # Footer
  Segment(inverted: true, vertical: true) {
    Container {
      Grid(divided: "true", inverted: true, stackable: true) {
        Column(width: 3) {
          Header(size: :h4, inverted: true) { "Group 1" }
          List(link: true, inverted: true) {
            MenuItem(href: "#") { "Link One" }
            MenuItem(href: "#") { "Link Two" }
            MenuItem(href: "#") { "Link Three" }
            MenuItem(href: "#") { "Link Four" }
          }
        }
  
        Column(width: 3) {
          Header(size: :h4, inverted: true) { "Group 2" }
          List(link: true, inverted: true) {
            MenuItem(href: "#") { "Link One" }
            MenuItem(href: "#") { "Link Two" }
            MenuItem(href: "#") { "Link Three" }
            MenuItem(href: "#") { "Link Four" }
          }
        }
  
        Column(width: 3) {
          Header(size: :h4, inverted: true) { "Group 3" }
          List(link: true, inverted: true) {
            MenuItem(href: "#") { "Link One" }
            MenuItem(href: "#") { "Link Two" }
            MenuItem(href: "#") { "Link Three" }
            MenuItem(href: "#") { "Link Four" }
          }
        }
  
        Column(width: 7) {
          Header(size: :h4, inverted: true) { "Footer Header" }
          text "Extra space for a call to action inside the footer that could help re-engage users."
        }
      }
      Divider(inverted: true, section: true)
      Image(src: "/icon.png", size: "mini", centered: true)
      List(horizontal: true, inverted: true, divided: true, link: true, size: "small") {
        MenuItem(href: "#") { "Site Map" }
        MenuItem(href: "#") { "Contact Us" }
        MenuItem(href: "#") { "Terms and Conditions" }
        MenuItem(href: "#") { "Privacy Policy" }
      }
    }
  }
}
