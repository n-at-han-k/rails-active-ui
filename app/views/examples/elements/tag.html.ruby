Header { "Tag" }
Wrapper(style: "contain: layout style;") {
  Tag(icon: "mail") { " 23" }
}

Header { "Image Tag" }
Wrapper(style: "contain: layout style;") {
  Tag(image: true) {
    Image(src: "/images/avatar/small/joe.jpg")
    text "Joe"
  }
  Tag(image: true) {
    Image(src: "/images/avatar/small/elliot.jpg")
    text "Elliot"
  }
  Tag(image: true) {
    Image(src: "/images/avatar/small/stevie.jpg")
    text "Stevie"
  }
}

Header { "Image Tag with Detail" }
Wrapper(style: "contain: layout style;") {
  Tag(image: true, color: "blue", detail: "Friend") {
    Image(src: "/images/avatar/small/veronika.jpg")
    text "Veronika"
  }
  Tag(image: true, color: "teal", detail: "Student") {
    Image(src: "/images/avatar/small/jenny.jpg")
    text "Veronika"
  }
  Tag(image: true, color: "yellow", detail: "Co-worker") {
    Image(src: "/images/avatar/small/christian.jpg")
    text "Helen"
  }
}

Header { "Image Tag with Delete" }
Wrapper(style: "contain: layout style;") {
  Tag(image: true) {
    Image(src: "/images/avatar/small/ade.jpg")
    text "Adrienne"
    Icon(name: "delete")
  }
  Tag(image: true) {
    Image(src: "/images/avatar/small/zoe.jpg")
    text "Zoe"
    Icon(name: "delete")
  }
  Tag(image: true) {
    Image(src: "/images/avatar/small/nan.jpg")
    text "Nan"
    Icon(name: "delete")
  }
}

Header { "Pointing" }
Wrapper(style: "contain: layout style;") {
  Form(class: "fluid") {
    Wrapper(class: "field") {
      Input(placeholder: "First name")
      Tag(pointing: "above") { "Please enter a value" }
    }
    Divider()
    Wrapper(class: "field") {
      Tag(pointing: "below") { "Please enter a value" }
      Input(placeholder: "Last Name")
    }
    Divider()
    Wrapper(class: "inline field") {
      Input(placeholder: "Username")
      Tag(pointing: "left") { "That name is taken!" }
    }
    Divider()
    Wrapper(class: "inline field") {
      Tag(pointing: "right") { "Your password must be 6 characters or more" }
      Input(placeholder: "Password", input_type: "password")
    }
  }
}

Header { "Pointing Basic" }
Wrapper(style: "contain: layout style;") {
  Form(class: "fluid") {
    Wrapper(class: "field") {
      Input(placeholder: "First name")
      Tag(pointing: "above", color: "red", basic: true) { "Please enter a value" }
    }
    Divider()
    Wrapper(class: "field") {
      Tag(pointing: "below", color: "red", basic: true) { "Please enter a value" }
      Input(placeholder: "Last Name")
    }
    Divider()
    Wrapper(class: "inline field") {
      Input(placeholder: "Username")
      Tag(pointing: "left", color: "red", basic: true) { "That name is taken!" }
    }
    Divider()
    Wrapper(class: "inline field") {
      Tag(pointing: "right", color: "red", basic: true) { "Your password must be 6 characters or more" }
      Input(placeholder: "Password", input_type: "password")
    }
  }
}

Header { "Corner" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2) {
    Column {
      Wrapper(class: "ui fluid image") {
        Tag(corner: "left") { Icon(name: "heart") }
        Image(src: "/images/wireframe/image.png")
      }
    }
    Column {
      Wrapper(class: "ui fluid image") {
        Tag(corner: "right", color: "red") { Icon(name: "save") }
        Image(src: "/images/wireframe/image.png")
      }
    }
  }
}

Header { "Tag Style" }
Wrapper(style: "contain: layout style;") {
  Tag(tag_style: true) { "New" }
  Tag(tag_style: true, color: "red") { "Upcoming" }
  Tag(tag_style: true, color: "teal") { "Featured" }
}

Header { "Ribbon" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2) {
    Column {
      Segment(class: "raised") {
        Tag(ribbon: true, color: "red") { "Overview" }
        text " Account Details"
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        Tag(ribbon: true, color: "blue") { "Community" }
        text " User Reviews"
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      }
    }
    Column {
      Segment {
        Tag(ribbon: true, color: "orange", class: "right") { "Specs" }
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        Tag(ribbon: true, color: "teal", class: "right") { "Reviews" }
        Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      }
    }
  }
}

Header { "Ribbon with Icon" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2) {
    Column {
      Wrapper(class: "ui fluid image") {
        Tag(ribbon: true, color: "black") {
          Icon(name: "hotel")
          text " Hotel"
        }
        Image(src: "/images/wireframe/image.png")
      }
    }
    Column {
      Wrapper(class: "ui fluid image") {
        Tag(ribbon: true, color: "blue", class: "right") {
          Icon(name: "spoon")
          text " Food"
        }
        Image(src: "/images/wireframe/image.png")
      }
    }
  }
}

Header { "Attached" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3) {
    Row {
      Column {
        Segment {
          Tag(attached: "top") { "HTML" }
          Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        }
      }
      Column {
        Segment {
          Tag(attached: "bottom") { "CSS" }
          Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        }
      }
      Column {
        Segment {
          Tag(attached: "top right") { "Code" }
          Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        }
      }
    }
    Row {
      Column {
        Segment {
          Tag(attached: "top left") { "View" }
          Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        }
      }
      Column {
        Segment {
          Tag(attached: "bottom left") { "User View" }
          Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        }
      }
      Column {
        Segment {
          Tag(attached: "bottom right") { "Admin View" }
          Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
        }
      }
    }
  }
}

Header { "Horizontal" }
Wrapper(style: "contain: layout style;") {
  List(divided: true, selection: true) {
    ListItem(href: "#") {
      Tag(horizontal: true, color: "red") { "Fruit" }
      text "Kumquats"
    }
    ListItem(href: "#") {
      Tag(horizontal: true, color: "purple") { "Candy" }
      text "Ice Cream"
    }
    ListItem(href: "#") {
      Tag(horizontal: true, color: "red") { "Fruit" }
      text "Orange"
    }
    ListItem(href: "#") {
      Tag(horizontal: true) { "Dog" }
      text "Poodle"
    }
  }
}

Header { "Floating" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(href: "#") {
      Icon(name: "mail")
      text " Messages"
      Tag(floating: true, color: "red") { "22" }
    }
    MenuItem(href: "#") {
      Icon(name: "users")
      text " Friends"
      Tag(floating: true, color: "blue") { "22" }
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Tag(inverted: true, color: "primary") { "Primary" }
    Tag(inverted: true, color: "secondary") { "Secondary" }
    Tag(inverted: true, color: "red") { "Red" }
    Tag(inverted: true, color: "orange") { "Orange" }
    Tag(inverted: true, color: "yellow") { "Yellow" }
    Tag(inverted: true, color: "olive") { "Olive" }
    Tag(inverted: true, color: "green") { "Green" }
    Tag(inverted: true, color: "teal") { "Teal" }
    Tag(inverted: true, color: "blue") { "Blue" }
    Tag(inverted: true, color: "violet") { "Violet" }
    Tag(inverted: true, color: "purple") { "Purple" }
    Tag(inverted: true, color: "pink") { "Pink" }
    Tag(inverted: true, color: "brown") { "Brown" }
    Tag(inverted: true, color: "grey") { "Grey" }
    Tag(inverted: true, color: "black") { "Black" }
    Paragraph { "" }
    Tag(inverted: true, basic: true, color: "primary") { "Primary" }
    Tag(inverted: true, basic: true, color: "secondary") { "Secondary" }
    Tag(inverted: true, basic: true, color: "red") { "Red" }
    Tag(inverted: true, basic: true, color: "orange") { "Orange" }
    Tag(inverted: true, basic: true, color: "yellow") { "Yellow" }
    Tag(inverted: true, basic: true, color: "olive") { "Olive" }
    Tag(inverted: true, basic: true, color: "green") { "Green" }
    Tag(inverted: true, basic: true, color: "teal") { "Teal" }
    Tag(inverted: true, basic: true, color: "blue") { "Blue" }
    Tag(inverted: true, basic: true, color: "violet") { "Violet" }
    Tag(inverted: true, basic: true, color: "purple") { "Purple" }
    Tag(inverted: true, basic: true, color: "pink") { "Pink" }
    Tag(inverted: true, basic: true, color: "brown") { "Brown" }
    Tag(inverted: true, basic: true, color: "grey") { "Grey" }
    Tag(inverted: true, basic: true, color: "black") { "Black" }
    Paragraph { "" }
    Tag(inverted: true, tag_style: true) { "Tag" }
    Tag(inverted: true, tag_style: true, color: "primary") { "Primary" }
    Tag(inverted: true, tag_style: true, color: "secondary") { "Secondary" }
    Tag(inverted: true, tag_style: true, color: "red") { "Red" }
    Tag(inverted: true, tag_style: true, color: "orange") { "Orange" }
    Tag(inverted: true, tag_style: true, color: "yellow") { "Yellow" }
    Tag(inverted: true, tag_style: true, color: "olive") { "Olive" }
    Tag(inverted: true, tag_style: true, color: "green") { "Green" }
    Tag(inverted: true, tag_style: true, color: "teal") { "Teal" }
    Tag(inverted: true, tag_style: true, color: "blue") { "Blue" }
    Tag(inverted: true, tag_style: true, color: "violet") { "Violet" }
    Tag(inverted: true, tag_style: true, color: "purple") { "Purple" }
    Tag(inverted: true, tag_style: true, color: "pink") { "Pink" }
    Tag(inverted: true, tag_style: true, color: "brown") { "Brown" }
    Tag(inverted: true, tag_style: true, color: "grey") { "Grey" }
    Tag(inverted: true, tag_style: true, color: "black") { "Black" }
  }
}

Header { "Detail" }
Wrapper(style: "contain: layout style;") {
  Tag(detail: "214") { "Dogs" }
}

Header { "Icon" }
Wrapper(style: "contain: layout style;") {
  Tag(icon: "mail") { "Mail" }
  Tag(icon: "checkmark") { "Test Passed" }
  Tag(icon: "dog") { "Dog" }
  Tag(icon: "cat") { "Cat" }
}

Header { "Right Icon" }
Wrapper(style: "contain: layout style;") {
  Tag(class: "right icon") {
    text "Mail"
    Icon(name: "mail")
  }
  Tag(class: "right icon") {
    text "Test Passed"
    Icon(name: "checkmark")
  }
  Tag(class: "right icon") {
    text "Dog"
    Icon(name: "dog")
  }
  Tag(class: "right icon") {
    text "Cat"
    Icon(name: "cat")
  }
}

Header { "Icon Only" }
Wrapper(style: "contain: layout style;") {
  Tag(class: "icon") { Icon(name: "mail") }
  Tag(class: "icon") { Icon(name: "dog") }
  Tag(class: "icon") { Icon(name: "cat") }
}

Header { "Disabled" }
Wrapper(style: "contain: layout style;") {
  Tag(disabled: true) { "Disabled Label" }
}

Header { "Fluid" }
Wrapper(style: "contain: layout style;") {
  Tag(fluid: true) { "Fits container" }
}

Header { "Centered Fluid" }
Wrapper(style: "contain: layout style;") {
  Tag(fluid: true, class: "centered") { "Fits container" }
}

Header { "Circular" }
Wrapper(style: "contain: layout style;") {
  Tag(circular: true, color: "red") { "2" }
  Tag(circular: true, color: "orange") { "2" }
  Tag(circular: true, color: "yellow") { "2" }
  Tag(circular: true, color: "olive") { "2" }
  Tag(circular: true, color: "green") { "2" }
  Tag(circular: true, color: "teal") { "2" }
  Tag(circular: true, color: "blue") { "2" }
  Tag(circular: true, color: "violet") { "2" }
  Tag(circular: true, color: "purple") { "2" }
  Tag(circular: true, color: "pink") { "2" }
  Tag(circular: true, color: "brown") { "2" }
  Tag(circular: true, color: "grey") { "2" }
  Tag(circular: true, color: "black") { "2" }
}

Header { "Empty Circular" }
Wrapper(style: "contain: layout style;") {
  Tag(circular: true, empty: true, color: "red")
  Tag(circular: true, empty: true, color: "orange")
  Tag(circular: true, empty: true, color: "yellow")
  Tag(circular: true, empty: true, color: "olive")
  Tag(circular: true, empty: true, color: "green")
  Tag(circular: true, empty: true, color: "teal")
  Tag(circular: true, empty: true, color: "blue")
  Tag(circular: true, empty: true, color: "violet")
  Tag(circular: true, empty: true, color: "purple")
  Tag(circular: true, empty: true, color: "pink")
  Tag(circular: true, empty: true, color: "brown")
  Tag(circular: true, empty: true, color: "grey")
  Tag(circular: true, empty: true, color: "black")
}

Header { "Basic" }
Wrapper(style: "contain: layout style;") {
  Tag(basic: true) { "Basic" }
  Tag(basic: true, pointing: "above") { "Pointing" }
  Tag(basic: true, image: true) {
    Image(src: "/images/avatar/small/elliot.jpg")
    text "Elliot"
  }
  Tag(basic: true, pointing: "above", color: "red") { "Red Pointing" }
  Tag(basic: true, color: "blue") { "Blue" }
}

Header { "Colored" }
Wrapper(style: "contain: layout style;") {
  Tag(color: "primary") { "Primary" }
  Tag(color: "secondary") { "Secondary" }
  Tag(color: "red") { "Red" }
  Tag(color: "orange") { "Orange" }
  Tag(color: "yellow") { "Yellow" }
  Tag(color: "olive") { "Olive" }
  Tag(color: "green") { "Green" }
  Tag(color: "teal") { "Teal" }
  Tag(color: "blue") { "Blue" }
  Tag(color: "violet") { "Violet" }
  Tag(color: "purple") { "Purple" }
  Tag(color: "pink") { "Pink" }
  Tag(color: "brown") { "Brown" }
  Tag(color: "grey") { "Grey" }
  Tag(color: "black") { "Black" }
}

Header { "Basic Tag Style" }
Wrapper(style: "contain: layout style;") {
  Tag(basic: true, tag_style: true) { "Standard Tag" }
  Tag(basic: true, tag_style: true, color: "primary") { "Primary" }
  Tag(basic: true, tag_style: true, color: "secondary") { "Secondary" }
  Tag(basic: true, tag_style: true, color: "red") { "Red" }
  Tag(basic: true, tag_style: true, color: "orange") { "Orange" }
  Tag(basic: true, tag_style: true, color: "yellow") { "Yellow" }
  Tag(basic: true, tag_style: true, color: "olive") { "Olive" }
  Tag(basic: true, tag_style: true, color: "green") { "Green" }
  Tag(basic: true, tag_style: true, color: "teal") { "Teal" }
  Tag(basic: true, tag_style: true, color: "blue") { "Blue" }
  Tag(basic: true, tag_style: true, color: "violet") { "Violet" }
  Tag(basic: true, tag_style: true, color: "purple") { "Purple" }
  Tag(basic: true, tag_style: true, color: "pink") { "Pink" }
  Tag(basic: true, tag_style: true, color: "brown") { "Brown" }
  Tag(basic: true, tag_style: true, color: "grey") { "Grey" }
  Tag(basic: true, tag_style: true, color: "black") { "Black" }
}

Header { "Size" }
Wrapper(style: "contain: layout style;") {
  Tag(size: "mini") { "Mini" }
  Tag(size: "tiny") { "Tiny" }
  Tag(size: "small") { "Small" }
  Tag { "Medium" }
  Tag(size: "large") { "Large" }
  Tag(size: "big") { "Big" }
  Tag(size: "huge") { "Huge" }
  Tag(size: "massive") { "Massive" }
}

Header { "Group" }
Wrapper(style: "contain: layout style;") {
  TagGroup {
    Tag { "One" }
    Tag { "Two" }
    Tag { "Three" }
    Tag { "Four" }
    Tag { "Five" }
    Tag { "Six" }
    Tag { "Seven" }
    Tag { "Eight" }
    Tag { "Nine" }
    Tag { "Ten" }
    Tag { "Eleven" }
    Tag { "Twelve" }
    Tag { "Thirteen" }
    Tag { "Fourteen" }
    Tag { "Fifteen" }
    Tag { "Sixteen" }
    Tag { "Seventeen" }
    Tag { "Eighteen" }
    Tag { "Nineteen" }
    Tag { "Twenty" }
    Tag { "Twentyone" }
    Tag { "Twentytwo" }
    Tag { "Twentythree" }
    Tag { "Twentyfour" }
    Tag { "Twentyfive" }
    Tag { "Twentysix" }
    Tag { "Twentyseven" }
    Tag { "Twentyeight" }
    Tag { "Twentynine" }
    Tag { "Thirty" }
  }
}

Header { "Group Size" }
Wrapper(style: "contain: layout style;") {
  TagGroup(size: "huge") {
    Tag { "Fun" }
    Tag { "Happy" }
    Tag { "Smart" }
    Tag { "Witty" }
  }
}

Header { "Colored Group" }
Wrapper(style: "contain: layout style;") {
  TagGroup(color: "blue") {
    Tag {
      text "Fun "
      Icon(name: "close")
    }
    Tag(detail: "22") { "Happy" }
    Tag { "Smart" }
    Tag { "Insane" }
    Tag { "Exciting" }
  }
}

Header { "Basic Group" }
Wrapper(style: "contain: layout style;") {
  TagGroup(basic: true) {
    Tag {
      text "Fun "
      Icon(name: "close")
    }
    Tag(detail: "22") { "Happy" }
    Tag { "Smart" }
    Tag { "Insane" }
    Tag { "Exciting" }
  }
}

Header { "Tag Group" }
Wrapper(style: "contain: layout style;") {
  TagGroup(tag_style: true) {
    Tag { "$10.00" }
    Tag { "$19.99" }
    Tag { "$24.99" }
    Tag { "$30.99" }
    Tag { "$10.25" }
  }
}

Header { "Circular Group" }
Wrapper(style: "contain: layout style;") {
  TagGroup(circular: true) {
    Tag { "11" }
    Tag { "22" }
    Tag { "33" }
    Tag { "44" }
    Tag { "141" }
  }
}
