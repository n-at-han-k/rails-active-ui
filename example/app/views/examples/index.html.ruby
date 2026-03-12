Container {
  Header(size: :h1, dividing: true) { text "Fomantic-UI Examples" }

  text "<p>These examples demonstrate the component library translated from the ".html_safe
  text '<a href="https://github.com/fomantic/Fomantic-UI/tree/develop/examples">Fomantic-UI examples</a>.'.html_safe
  text "</p>".html_safe

  List(divided: true, relaxed: true, size: "big") {
    text '<div class="item">'.html_safe
    Icon(name: "sign in")
    text '<div class="content"><a href="/examples/login">Login</a><div class="description">A simple login form</div></div>'.html_safe
    text '</div>'.html_safe

    text '<div class="item">'.html_safe
    Icon(name: "home")
    text '<div class="content"><a href="/examples/homepage">Homepage</a><div class="description">A homepage with sidebar navigation</div></div>'.html_safe
    text '</div>'.html_safe

    text '<div class="item">'.html_safe
    Icon(name: "pin")
    text '<div class="content"><a href="/examples/fixed">Fixed Menu</a><div class="description">A fixed top menu layout</div></div>'.html_safe
    text '</div>'.html_safe

    text '<div class="item">'.html_safe
    Icon(name: "attach")
    text '<div class="content"><a href="/examples/attached">Attached Content</a><div class="description">Segments, tables, menus, and headers attached together</div></div>'.html_safe
    text '</div>'.html_safe

    text '<div class="item">'.html_safe
    Icon(name: "sticky note")
    text '<div class="content"><a href="/examples/sticky">Sticky</a><div class="description">Sticky menu and lazy-loaded images</div></div>'.html_safe
    text '</div>'.html_safe

    text '<div class="item">'.html_safe
    Icon(name: "grid layout")
    text '<div class="content"><a href="/examples/grid">Grid</a><div class="description">Grid system patterns and variations</div></div>'.html_safe
    text '</div>'.html_safe

    text '<div class="item">'.html_safe
    Icon(name: "exchange")
    text '<div class="content"><a href="/examples/bootstrap">Bootstrap Migration</a><div class="description">Bootstrap-equivalent patterns in Fomantic-UI</div></div>'.html_safe
    text '</div>'.html_safe

    text '<div class="item">'.html_safe
    Icon(name: "mobile alternate")
    text '<div class="content"><a href="/examples/responsive">Responsive</a><div class="description">Responsive grid and element patterns</div></div>'.html_safe
    text '</div>'.html_safe
  }
}
