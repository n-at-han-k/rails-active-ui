Container {
  Header(size: :h1, dividing: true) { text "Fomantic-UI Examples" }

  text "These examples demonstrate the component library translated from the "
  LinkTo(href: "https://github.com/fomantic/Fomantic-UI/tree/develop/examples") { text "Fomantic-UI examples" }
  text "."

  List(divided: true, relaxed: true, size: "big") {
    MenuItem(icon: "sign in") {
      LinkTo(href: "/examples/login") { text "Login" }
      text " — A simple login form"
    }

    MenuItem(icon: "home") {
      LinkTo(href: "/examples/homepage") { text "Homepage" }
      text " — A homepage with sidebar navigation"
    }

    MenuItem(icon: "pin") {
      LinkTo(href: "/examples/fixed") { text "Fixed Menu" }
      text " — A fixed top menu layout"
    }

    MenuItem(icon: "attach") {
      LinkTo(href: "/examples/attached") { text "Attached Content" }
      text " — Segments, tables, menus, and headers attached together"
    }

    MenuItem(icon: "sticky note") {
      LinkTo(href: "/examples/sticky") { text "Sticky" }
      text " — Sticky menu and lazy-loaded images"
    }

    MenuItem(icon: "grid layout") {
      LinkTo(href: "/examples/grid") { text "Grid" }
      text " — Grid system patterns and variations"
    }

    MenuItem(icon: "exchange") {
      LinkTo(href: "/examples/bootstrap") { text "Bootstrap Migration" }
      text " — Bootstrap-equivalent patterns in Fomantic-UI"
    }

    MenuItem(icon: "mobile alternate") {
      LinkTo(href: "/examples/responsive") { text "Responsive" }
      text " — Responsive grid and element patterns"
    }

    MenuItem(icon: "dashboard") {
      LinkTo(href: "/examples/dashboard") { text "Admin Dashboard" }
      text " — Admin dashboard with sidebar, cards, table, and statistics"
    }
  }
}
