text '<style>
  body > .grid { height: 100%; }
  .image { margin-top: -100px; }
  .column { max-width: 450px; }
  body { background-color: #DADADA; }
</style>'.html_safe

Grid(columns: 1, centered: true) {
  Column {
    Header(size: :h2, color: "teal", aligned: "center") {
      Image(src: "/icon.png", size: "mini")
      text " Log-in to your account"
    }

    Form(size: "large") {
      Segment(stacked: true) {
        Input(icon: "user", icon_position: "left", placeholder: "E-mail address", name: "email")
        Input(icon: "lock", icon_position: "left", placeholder: "Password", name: "password", input_type: "password")
        Button(color: "teal", fluid: true, size: "large") { "Login" }
      }
    }

    Message {
      text "New to us? "
      Link(href: "#") { "Sign Up" }
    }
  }
}
