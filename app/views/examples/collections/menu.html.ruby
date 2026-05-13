Menu(text: true) {
  MenuItem {
    Image(src: "/images/new-school.jpg")
  }
  MenuItem(class: "browse", href: "#") {
    text "Browse Courses"
    Icon(name: "dropdown")
  }
  SubMenu(position: "right") {
    MenuItem(dropdown: true) {
      text "More"
      Icon(name: "dropdown")
      SubMenu {
        MenuItem { text "Applications" }
        MenuItem { text "International Students" }
        MenuItem { text "Scholarships" }
      }
    }
  }
}

Grid(columns: 3, relaxed: true, divided: true) {
  Column {
    Header(size: :h4) { text "Business" }
    List(link: true) {
      MenuItem(href: "#") { text "Design & Urban Ecologies" }
      MenuItem(href: "#") { text "Fashion Design" }
      MenuItem(href: "#") { text "Fine Art" }
      MenuItem(href: "#") { text "Strategic Design" }
    }
  }
  Column {
    Header(size: :h4) { text "Liberal Arts" }
    List(link: true) {
      MenuItem(href: "#") { text "Anthropology" }
      MenuItem(href: "#") { text "Economics" }
      MenuItem(href: "#") { text "Media Studies" }
      MenuItem(href: "#") { text "Philosophy" }
    }
  }
  Column {
    Header(size: :h4) { text "Social Sciences" }
    List(link: true) {
      MenuItem(href: "#") { text "Food Studies" }
      MenuItem(href: "#") { text "Journalism" }
      MenuItem(href: "#") { text "Non Profit Management" }
    }
  }
}
