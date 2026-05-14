Style "
  body { background-color: #DADADA; }
  body > .grid { height: 100%; }
  .image { margin-top: -100px; }
  .column { max-width: 450px; }
"

Grid(class: "middle aligned center aligned") {
  Column {
    Header(size: :h2, color: "teal", class: "image") {
      Image(src: "/images/logo.png")
      Text(class: "content") { "Log-in to your account" }
    }

    Form(url: "#", class: "large") {
      Segment(class: "stacked") {
        Field {
          Input(icon: "user", icon_position: "left") {
            TextField(:email, placeholder: "E-mail address")
          }
        }
        Field {
          Input(icon: "lock", icon_position: "left") {
            PasswordField(:password, placeholder: "Password")
          }
        }
        Button(color: "teal", fluid: true, size: "large", class: "submit") { "Login" }
      }

      Message(class: "error")
    }

    Message {
      Text { "New to us?" }
      NbSpace()
      LinkTo(href: "#") { "Sign Up" }
    }
  }
}
