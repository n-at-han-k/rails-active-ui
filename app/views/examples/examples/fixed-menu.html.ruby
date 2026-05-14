
Menu(fixed: "top", inverted: true) {
  Container {
    MenuItem(href: "#", class: "header") {
      Image(src: "/images/logo.png", class: "logo")
      Text { "Project Name" }
    }
    MenuItem(href: "#") { "Home" }
    MenuItem(dropdown: true, class: "simple") {
      Text { "Dropdown" }
      NbSpace()
      Icon(name: "dropdown")
      SubMenu {
        MenuItem(href: "#") { "Link Item" }
        MenuItem(href: "#") { "Link Item" }
        Divider()
        MenuItem(header: true) { "Header Item" }
        MenuItem {
          Icon(name: "dropdown")
          Text { "Sub Menu" }
          SubMenu {
            MenuItem(href: "#") { "Link Item" }
            MenuItem(href: "#") { "Link Item" }
          }
        }
        MenuItem(href: "#") { "Link Item" }
      }
    }
  }
}

Container(class: "main text", style: "margin-top: 7em;") {
  Header(size: :h1) { "Semantic UI Fixed Template" }
  Paragraph { "This is a basic fixed menu template using fixed size containers." }
  Paragraph { "A text container is used for the main container, which is useful for single column layouts." }
  Image(src: "/images/wireframe/media-paragraph.png", style: "margin-top: 2em;")
  Image(src: "/images/wireframe/paragraph.png", style: "margin-top: 2em;")
  Image(src: "/images/wireframe/paragraph.png", style: "margin-top: 2em;")
  Image(src: "/images/wireframe/paragraph.png", style: "margin-top: 2em;")
  Image(src: "/images/wireframe/paragraph.png", style: "margin-top: 2em;")
  Image(src: "/images/wireframe/paragraph.png", style: "margin-top: 2em;")
  Image(src: "/images/wireframe/paragraph.png", style: "margin-top: 2em;")
}

Segment(inverted: true, vertical: true, class: "footer", style: "margin: 5em 0em 0em; padding: 5em 0em;") {
  Container(class: "center aligned") {
    Grid(class: "stackable inverted divided") {
      Column(width: 3) {
        Header(size: :h4, inverted: true) { "Group 1" }
        List(class: "inverted link") {
          ListItem(href: "#") { "Link One" }
          ListItem(href: "#") { "Link Two" }
          ListItem(href: "#") { "Link Three" }
          ListItem(href: "#") { "Link Four" }
        }
      }
      Column(width: 3) {
        Header(size: :h4, inverted: true) { "Group 2" }
        List(class: "inverted link") {
          ListItem(href: "#") { "Link One" }
          ListItem(href: "#") { "Link Two" }
          ListItem(href: "#") { "Link Three" }
          ListItem(href: "#") { "Link Four" }
        }
      }
      Column(width: 3) {
        Header(size: :h4, inverted: true) { "Group 3" }
        List(class: "inverted link") {
          ListItem(href: "#") { "Link One" }
          ListItem(href: "#") { "Link Two" }
          ListItem(href: "#") { "Link Three" }
          ListItem(href: "#") { "Link Four" }
        }
      }
      Column(width: 7) {
        Header(size: :h4, inverted: true) { "Footer Header" }
        Paragraph { "Extra space for a call to action inside the footer that could help re-engage users." }
      }
    }
    Divider(inverted: true, section: true)
    Image(src: "/images/logo.png", class: "centered mini")
    List(class: "horizontal inverted small divided link") {
      ListItem(href: "#") { "Site Map" }
      ListItem(href: "#") { "Contact Us" }
      ListItem(href: "#") { "Terms and Conditions" }
      ListItem(href: "#") { "Privacy Policy" }
    }
  }
}

