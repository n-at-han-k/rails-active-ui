Header(size: :h1, icon: "puzzle piece") { text "Component Examples" }

text "A comprehensive showcase of every rails-active-ui component with live examples and code snippets."

Divider(section: true)

# Table of contents
Segment(raised: true) {
  Header(size: :h3, icon: "list") { text "Categories" }
  List(bulleted: true, size: "large") {
    concat tag.div(class: "item") { tag.a("Layout Primitives", href: "#layout-primitives") }
    concat tag.div(class: "item") { tag.a("Globals", href: "#globals") }
    concat tag.div(class: "item") { tag.a("Elements", href: "#elements") }
    concat tag.div(class: "item") { tag.a("Collections", href: "#collections") }
    concat tag.div(class: "item") { tag.a("Views", href: "#views") }
    concat tag.div(class: "item") { tag.a("Modules", href: "#modules") }
    concat tag.div(class: "item") { tag.a("Behaviors", href: "#behaviors") }
  }
}

Divider(section: true)

concat tag.div(id: "layout-primitives") { "" }
Header(size: :h2, dividing: true, icon: "columns") { text "Layout Primitives" }
output_buffer << render("ui/examples/layout_primitives")

Divider(section: true)

concat tag.div(id: "globals") { "" }
Header(size: :h2, dividing: true, icon: "globe") { text "Globals" }
output_buffer << render("ui/examples/globals")

Divider(section: true)

concat tag.div(id: "elements") { "" }
Header(size: :h2, dividing: true, icon: "cube") { text "Elements" }
output_buffer << render("ui/examples/elements")

Divider(section: true)

concat tag.div(id: "collections") { "" }
Header(size: :h2, dividing: true, icon: "th") { text "Collections" }
output_buffer << render("ui/examples/collections")

Divider(section: true)

concat tag.div(id: "views") { "" }
Header(size: :h2, dividing: true, icon: "eye") { text "Views" }
output_buffer << render("ui/examples/views_components")

Divider(section: true)

concat tag.div(id: "modules") { "" }
Header(size: :h2, dividing: true, icon: "plug") { text "Modules" }
output_buffer << render("ui/examples/modules_components")

Divider(section: true)

concat tag.div(id: "behaviors") { "" }
Header(size: :h2, dividing: true, icon: "cogs") { text "Behaviors" }
output_buffer << render("ui/examples/behaviors")
