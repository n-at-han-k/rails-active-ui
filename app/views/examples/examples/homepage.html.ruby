text '<style>
  .ui.menu .item img.logo { margin-right: 1.5em; }
  .main.container { margin-top: 7em; }
  .wireframe { margin-top: 2em; }
  .ui.footer.segment { margin: 5em 0em 0em; padding: 5em 0em; }
</style>'.html_safe

# Sidebar
Sidebar(inverted: true, visible: false) {
  MenuItem(href: "#") { text "1" }
  MenuItem(href: "#") { text "2" }
  MenuItem(href: "#") { text "3" }
}

Pusher {
  # Fixed menu
  Menu(fixed: "top", inverted: true) {
    Container {
      MenuItem(header: true, href: "#") {
        Image(src: "/icon.png", size: "mini")
        text " Project Name"
      }
      MenuItem(href: "#") { text "Home" }
      MenuItem(href: "#") { text "Work" }
      MenuItem(href: "#") { text "Company" }
      MenuItem(href: "#") { text "Careers" }

      MenuItem(dropdown: true) {
        text "Dropdown "
        Icon(name: "dropdown")
        MenuMenu {
          MenuItem(href: "#") { text "Link Item" }
          MenuItem(href: "#") { text "Link Item" }
          Divider()
          Header(size: :h4) { text "Header Item" }
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

  # Main content
  Container(text: true) {
    Header(size: :h1) { text "Heading" }
    text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."

    Header(size: :h2) { text "First Article" }
    Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "medium")
    text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."
    text " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper."

    Header(size: :h2) { text "Second Article" }
    Image(src: "https://fomantic-ui.com/images/wireframe/white-image.png", size: "medium")
    text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo."
    text " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu libero sit amet quam egestas semper."
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

      Divider(inverted: true, section: true)
      Image(src: "/icon.png", size: "mini", centered: true)
      List(horizontal: true, inverted: true, divided: true, link: true, size: "small") {
        MenuItem(href: "#") { text "Site Map" }
        MenuItem(href: "#") { text "Contact Us" }
        MenuItem(href: "#") { text "Terms and Conditions" }
        MenuItem(href: "#") { text "Privacy Policy" }
      }
    }
  }
}
