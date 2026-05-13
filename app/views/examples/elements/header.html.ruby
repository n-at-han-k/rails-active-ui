Header { "Page Headers" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h1) { "First header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h2) { "Second header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h3) { "Third header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h4) { "Fourth header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h5) { "Fifth header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Content Headers" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, class: "huge") { "Huge Header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h2, class: "large") { "Large Header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h2, class: "medium") { "Medium Header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h2, class: "small") { "Small Header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h2, class: "tiny") { "Tiny Header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Icon Headers" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, icon: "settings") {
    text "Account Settings"
    SubHeader { "Manage your account settings and set e-mail preferences." }
  }
}

Header { "Icon Headers" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, icon: "circular users", aligned: "center") {
    text "Friends"
  }
  Image(src: "/images/wireframe/centered-paragraph.png", class: "centered wireframe")
}

Header { "Sub Headers" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, sub: true) { "Price" }
  text "$10.99"
}

Header { "Sub Headers" }
Wrapper(style: "contain: layout style;") {
  List(horizontal: true) {
    ListItem {
      Image(src: "/images/avatar2/small/molly.png", size: "mini", circular: true)
      ListContent {
        Header(size: :h2, sub: true) { "Molly" }
        text "Coordinator"
      }
    }
    ListItem {
      Image(src: "/images/avatar2/small/elyse.png", size: "mini", circular: true)
      ListContent {
        Header(size: :h2, sub: true) { "Elyse" }
        text "Developer"
      }
    }
    ListItem {
      Image(src: "/images/avatar2/small/eve.png", size: "mini", circular: true)
      ListContent {
        Header(size: :h2, sub: true) { "Eve" }
        text "Project Manager"
      }
    }
  }
}

Header { "Image Header" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, image: true) { |c|
    c.header_image { Image(src: "/images/icons/school.png") }
    text "Learn More"
  }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Image Header" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, image: true) { |c|
    c.header_image { Image(src: "/images/avatar2/large/patrick.png", circular: true) }
    text "Patrick"
  }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Image Header" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, image: true) { |c|
    c.header_image { Image(src: "/images/icons/plugin.png") }
    text "Plug-ins"
    SubHeader { "Check out our plug-in marketplace" }
  }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Icon Content" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, icon: "plug") {
    text "Uptime Guarantee"
  }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Icon Content" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, icon: "settings") {
    text "Account Settings"
    SubHeader { "Manage your preferences" }
  }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Subheader" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2) {
    text "Account Settings"
    SubHeader { "Manage your account settings and set e-mail preferences." }
  }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Subheader" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h1) {
    text "H1"
    SubHeader { "Sub Header" }
  }
  Header(size: :h2) {
    text "H2"
    SubHeader { "Sub Header" }
  }
  Header(size: :h3) {
    text "H3"
    SubHeader { "Sub Header" }
  }
  Header(size: :h4) {
    text "H4"
    SubHeader { "Sub Header" }
  }
  Header(size: :h5) {
    text "H5"
    SubHeader { "Sub Header" }
  }
}

Header { "Disabled" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h2, disabled: true) { "Disabled Header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Dividing" }
Wrapper(style: "contain: layout style;") {
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
  Header(size: :h3, dividing: true) { "Dividing Header" }
  Image(src: "/images/wireframe/short-paragraph.png", class: "wireframe")
}

Header { "Block" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h3, block_header: true) { "Block Header" }
  Image(src: "/images/wireframe/media-paragraph.png", class: "wireframe")
}

Header { "Attached" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h3, attached: "top") { "Top Attached" }
  Segment(attached: true) {
    Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
  }
  Header(size: :h3, attached: "") { "Attached" }
  Segment(attached: true) {
    Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
  }
  Header(size: :h3, attached: "bottom") { "Bottom Attached" }
}

Header { "Seamless Attached" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h3, attached: "top", class: "seamless") { "Seamless Top Attached" }
  Segment(attached: true) {
    Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
  }
  Segment(attached: true) {
    Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
  }
}

Header { "Seamless Attached" }
Wrapper(style: "contain: layout style;") {
  Segment(attached: true) {
    Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
  }
  Segment(attached: true, class: "seamless") {
    Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
  }
  Header(size: :h3, attached: "bottom") { "Seamless Bottom Attached" }
}

Header { "Floating" }
Wrapper(style: "contain: layout style;") {
  Segment(class: "clearing") {
    Header(size: :h3, floating: true, class: "right") { "Go Forward" }
    Header(size: :h3, floating: true, class: "left") { "Go Back" }
  }
}

Header { "Text Alignment" }
Wrapper(style: "contain: layout style;") {
  Segment {
    Header(size: :h3, aligned: "right") { "Right" }
    Header(size: :h3, aligned: "left") { "Left" }
    Header(size: :h3, aligned: "justified") { "This should take up the full width even if only one line" }
    Header(size: :h3, aligned: "center") { "Center" }
  }
}

Header { "Colored" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h4, color: "primary") { "Primary" }
  Header(size: :h4, color: "secondary") { "Secondary" }
  Header(size: :h4, color: "red") { "Red" }
  Header(size: :h4, color: "orange") { "Orange" }
  Header(size: :h4, color: "yellow") { "Yellow" }
  Header(size: :h4, color: "olive") { "Olive" }
  Header(size: :h4, color: "green") { "Green" }
  Header(size: :h4, color: "teal") { "Teal" }
  Header(size: :h4, color: "blue") { "Blue" }
  Header(size: :h4, color: "purple") { "Purple" }
  Header(size: :h4, color: "violet") { "Violet" }
  Header(size: :h4, color: "pink") { "Pink" }
  Header(size: :h4, color: "brown") { "Brown" }
  Header(size: :h4, color: "grey") { "Grey" }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Header(size: :h4, color: "red", inverted: true) { "Red" }
    Header(size: :h4, color: "orange", inverted: true) { "Orange" }
    Header(size: :h4, color: "yellow", inverted: true) { "Yellow" }
    Header(size: :h4, color: "olive", inverted: true) { "Olive" }
    Header(size: :h4, color: "green", inverted: true) { "Green" }
    Header(size: :h4, color: "teal", inverted: true) { "Teal" }
    Header(size: :h4, color: "blue", inverted: true) { "Blue" }
    Header(size: :h4, color: "purple", inverted: true) { "Purple" }
    Header(size: :h4, color: "violet", inverted: true) { "Violet" }
    Header(size: :h4, color: "pink", inverted: true) { "Pink" }
    Header(size: :h4, color: "brown", inverted: true) { "Brown" }
    Header(size: :h4, color: "grey", inverted: true) { "Grey" }
  }
}
