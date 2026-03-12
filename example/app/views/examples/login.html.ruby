text '<style>
  body > .grid { height: 100%; }
  .image { margin-top: -100px; }
  .column { max-width: 450px; }
  body { background-color: #DADADA; }
</style>'.html_safe

Grid(columns: 1, centered: true) {
  text '<div class="column">'.html_safe

  Header(size: :h2, color: "teal", aligned: "center") {
    Image(src: "/icon.png", size: "mini")
    text " Log-in to your account"
  }

  Form(size: "large") {
    Segment(stacked: true) {
      text '<div class="field">'.html_safe
      text '<div class="ui left icon input">'.html_safe
      text '<i class="user icon"></i>'.html_safe
      text '<input type="text" name="email" placeholder="E-mail address">'.html_safe
      text '</div></div>'.html_safe

      text '<div class="field">'.html_safe
      text '<div class="ui left icon input">'.html_safe
      text '<i class="lock icon"></i>'.html_safe
      text '<input type="password" name="password" placeholder="Password">'.html_safe
      text '</div></div>'.html_safe

      Button(color: "teal", fluid: true, size: "large") { text "Login" }
    }
  }

  Message {
    text "New to us? "
    text '<a href="#">Sign Up</a>'.html_safe
  }

  text '</div>'.html_safe
}
