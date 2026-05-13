text '<style>
  .ui.menu .item img.logo { margin-right: 1.5em; }
  .main.container { margin-top: 7em; }
  .wireframe { margin-top: 2em; }
  .ui.footer.segment { margin: 5em 0em 0em; padding: 5em 0em; }
</style>'.html_safe

# Sidebar
Sidebar(inverted: true, visible: false) {
  MenuItem(href: "#") { "1" }
  MenuItem(href: "#") { "2" }
  MenuItem(href: "#") { "3" }
}

Pusher {
  # Fixed menu
  Menu(fixed: "top", inverted: true) {
    Container {
      MenuItem(header: true, href: "#") {
        Image(src: "/icon.png", size: "mini")
        text " Project Name"
      }
      MenuItem(href: "#") { "Home" }
      MenuItem(href: "#") { "Work" }
      MenuItem(href: "#") { "Company" }
      MenuItem(href: "#") { "Careers" }

      MenuItem(dropdown: true) {
        text "Dropdown "
        Icon(name: "dropdown")
        MenuMenu {
          MenuItem(href: "#") { "Link Item" }
          MenuItem(href: "#") { "Link Item" }
          Divider()
          Header(size: :h4) { "Header Item" }
          MenuItem(dropdown: true) {
            Icon(name: "dropdown")
            text "Sub Menu"
            MenuMenu {
              MenuItem(href: "#") { "Link Item" }
              MenuItem(href: "#") { "Link Item" }
            }
          }
          MenuItem(href: "#") { "Link Item" }
        }
      }
    }
  }

  # Main content
  Container(text: true) {
    Header(size: :h1) { "Heading" }
    text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."

    Header(size: :h2) { "First Article" }
    Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "medium")
    text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."
    text " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper."

    Header(size: :h2) { "Second Article" }
    Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "medium")
    text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."
    text " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper."
  }

  # Footer
  Segment(inverted: true, vertical: true) {
    Container {
      Grid(divided: "true", inverted: true, stackable: true) {
        Column(width: 3) {
          Header(size: :h4, inverted: true) { "About" }
          List(link: true, inverted: true) {
            MenuItem(href: "#") { "Sitemap" }
            MenuItem(href: "#") { "Contact Us" }
            MenuItem(href: "#") { "Religious Coverage" }
            MenuItem(href: "#") { "Gazettes" }
          }
        }

        Column(width: 3) {
          Header(size: :h4, inverted: true) { "Services" }
          List(link: true, inverted: true) {
            MenuItem(href: "#") { "Banana Pre-Order" }
            MenuItem(href: "#") { "DNA FAQ" }
            MenuItem(href: "#") { "How To Access" }
            MenuItem(href: "#") { "Favorite X-Men" }
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
