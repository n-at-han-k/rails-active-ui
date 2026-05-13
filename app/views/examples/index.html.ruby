Container {
  Header(size: :h1, dividing: true) { text "Fomantic-UI Examples" }

  text "These examples demonstrate the component library translated from the "
  Link(href: "https://github.com/fomantic/Fomantic-UI/tree/develop/examples") { text "Fomantic-UI examples" }
  text "."

  List(divided: true, relaxed: true, size: "big") {
    MenuItem(icon: "sign in") {
      Link(href: "/examples/login") { text "Login" }
      text " — A simple login form"
    }

    MenuItem(icon: "home") {
      Link(href: "/examples/homepage") { text "Homepage" }
      text " — A homepage with sidebar navigation"
    }

    MenuItem(icon: "pin") {
      Link(href: "/examples/fixed") { text "Fixed Menu" }
      text " — A fixed top menu layout"
    }

    MenuItem(icon: "attach") {
      Link(href: "/examples/attached") { text "Attached Content" }
      text " — Segments, tables, menus, and headers attached together"
    }

    MenuItem(icon: "sticky note") {
      Link(href: "/examples/sticky") { text "Sticky" }
      text " — Sticky menu and lazy-loaded images"
    }

    MenuItem(icon: "grid layout") {
      Link(href: "/examples/grid") { text "Grid" }
      text " — Grid system patterns and variations"
    }

    MenuItem(icon: "exchange") {
      Link(href: "/examples/bootstrap") { text "Bootstrap Migration" }
      text " — Bootstrap-equivalent patterns in Fomantic-UI"
    }

    MenuItem(icon: "mobile alternate") {
      Link(href: "/examples/responsive") { text "Responsive" }
      text " — Responsive grid and element patterns"
    }

    MenuItem(icon: "dashboard") {
      Link(href: "/examples/dashboard") { text "Admin Dashboard" }
      text " — Admin dashboard with sidebar, cards, table, and statistics"
    }
  }
}
