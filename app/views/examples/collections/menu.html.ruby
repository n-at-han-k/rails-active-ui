Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(text: true) {
    MenuItem(class: "browse", href: "#") {
      text "Browse Courses"
      Icon(name: "dropdown")
    }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "More"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem { "Applications" }
          MenuItem { "International Students" }
          MenuItem { "Scholarships" }
        }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(attached: "top") {
    MenuItem(dropdown: true, icon: "wrench") {
      SubMenu {
        MenuItem {
          Icon(name: "dropdown")
          text "New"
          SubMenu {
            MenuItem { "Document" }
            MenuItem { "Image" }
          }
        }
        MenuItem { "Open..." }
        MenuItem { "Save..." }
        MenuItem { "Edit Permissions" }
        Divider()
        MenuItem(header: true) { "Export" }
        MenuItem { "Share..." }
      }
    }
    SubMenu(position: "right") {
      Search(category: true, aligned: "right", placeholder: "Search animals...")
    }
  }

  Segment(attached: "bottom") {
    Paragraph { "" }
    Paragraph { "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(secondary: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
    SubMenu(position: "right") {
      MenuItem {
        Input(icon: "search", placeholder: "Search...")
      }
      MenuItem(href: "#") { "Logout" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(pointing: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
    SubMenu(position: "right") {
      MenuItem {
        Input(transparent: true, icon: "search", placeholder: "Search...")
      }
    }
  }
  Segment {
    Paragraph { "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(tabular: true, attached: "top") {
    MenuItem(active: true, href: "#") { "Bio" }
    MenuItem(href: "#") { "Photos" }
    SubMenu(position: "right") {
      MenuItem {
        Input(transparent: true, icon: "search", placeholder: "Search users...")
      }
    }
  }

  Segment(attached: "bottom") {
    Paragraph { "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Segment(attached: "top") {
    Paragraph { "" }
  }

  Menu(tabular: true, attached: "bottom") {
    MenuItem(active: true, href: "#") { "Active Project" }
    MenuItem(href: "#") { "Project #2" }
    MenuItem(href: "#") { "Project #3" }
    SubMenu(position: "right") {
      MenuItem(href: "#", icon: "add") { "New Tab" }
    }
  }
}

Header { "Left Tabular" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 4, class: "left attached") {
      Menu(vertical: true, fluid: true, tabular: true) {
        MenuItem(active: true, href: "#") { "Bio" }
        MenuItem(href: "#") { "Pics" }
        MenuItem(href: "#") { "Companies" }
        MenuItem(href: "#") { "Links" }
      }
    }
    Column(width: 12, class: "stretched right attached") {
      Segment(class: "seamless right attached") {
        text "This is an stretched grid column. This segment will always match the tab height"
      }
    }
  }
}

Header { "Right Tabular" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 12, class: "stretched left attached") {
      Segment(class: "seamless left attached") {
        text "This is an stretched grid column. This segment will always match the tab height"
      }
    }
    Column(width: 4, class: "right attached") {
      Menu(vertical: true, fluid: true, tabular: true, position: "right") {
        MenuItem(active: true, href: "#") { "Bio" }
        MenuItem(href: "#") { "Pics" }
        MenuItem(href: "#") { "Companies" }
        MenuItem(href: "#") { "Links" }
      }
    }
  }
}

Header { "Text Menu Sort" }
Wrapper(style: "contain: layout style;") {
  Menu(text: true) {
    MenuItem(header: true) { "Sort By" }
    MenuItem(active: true, href: "#") { "Closest" }
    MenuItem(href: "#") { "Most Comments" }
    MenuItem(href: "#") { "Most Popular" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(active: true, color: "teal", href: "#") {
      text "Inbox"
      Tag(color: "teal", class: "left pointing") { "1" }
    }
    MenuItem(href: "#") {
      text "Spam"
      Tag { "51" }
    }
    MenuItem(href: "#") {
      text "Updates"
      Tag { "1" }
    }
    MenuItem {
      Input(transparent: true, icon: "search", placeholder: "Search mail...")
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(secondary: true, vertical: true) {
    MenuItem(active: true, href: "#") { "Account" }
    MenuItem(href: "#") { "Settings" }
    MenuItem(dropdown: true) {
      Icon(name: "dropdown")
      text "Display Options"
      SubMenu {
        MenuItem(header: true) { "Text Size" }
        MenuItem(href: "#") { "Small" }
        MenuItem(href: "#") { "Medium" }
        MenuItem(href: "#") { "Large" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true, text: true) {
    MenuItem(header: true) { "Sort By" }
    MenuItem(active: true, href: "#") { "Closest" }
    MenuItem(href: "#") { "Most Comments" }
    MenuItem(href: "#") { "Most Popular" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true, pointing: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(secondary: true, vertical: true, pointing: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(pagination: true) {
    MenuItem(active: true, href: "#") { "1" }
    MenuItem(disabled: true) { "..." }
    MenuItem(href: "#") { "10" }
    MenuItem(href: "#") { "11" }
    MenuItem(href: "#") { "12" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(header: true) { "Our Company" }
    MenuItem(href: "#") { "About Us" }
    MenuItem(href: "#") { "Jobs" }
    MenuItem(href: "#") { "Locations" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem {
      MenuItem(header: true) { "Products" }
      SubMenu {
        MenuItem(href: "#") { "Enterprise" }
        MenuItem(href: "#") { "Consumer" }
      }
    }
    MenuItem {
      MenuItem(header: true) { "CMS Solutions" }
      SubMenu {
        MenuItem(href: "#") { "Rails" }
        MenuItem(href: "#") { "Python" }
        MenuItem(href: "#") { "PHP" }
      }
    }
    MenuItem {
      MenuItem(header: true) { "Hosting" }
      SubMenu {
        MenuItem(href: "#") { "Shared" }
        MenuItem(href: "#") { "Dedicated" }
      }
    }
    MenuItem {
      MenuItem(header: true) { "Support" }
      SubMenu {
        MenuItem(href: "#") { "E-mail Support" }
        MenuItem(href: "#") { "FAQs" }
      }
    }
  }
}

Header { "Vertical Menu with Headers" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(href: "#") {
      Header(size: :h4) { "Promotions" }
      Paragraph { "Check out our new promotions" }
    }
    MenuItem(href: "#") {
      Header(size: :h4) { "Coupons" }
      Paragraph { "Check out our collection of coupons" }
    }
    MenuItem(href: "#") {
      Header(size: :h4) { "Rebates" }
      Paragraph { "Visit our rebate forum for information on claiming rebates" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem {
      Input(icon: "search", placeholder: "Search...")
    }
    MenuItem(position: "right") {
      Input(action: true, placeholder: "Navigate to...") {
        Button { "Go" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem {
      Button(color: "primary") { "Sign up" }
    }
    MenuItem {
      Button { "Log-in" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(href: "https://www.google.com") { "Visit Google" }
    MenuItem(link: true) { "Javascript Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(dropdown: true) {
      text "Categories"
      Icon(name: "dropdown")
      SubMenu {
        MenuItem(href: "#") { "Electronics" }
        MenuItem(href: "#") { "Automotive" }
        MenuItem(href: "#") { "Home" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(class: "browse", href: "#") {
      text "Browse"
      Icon(name: "dropdown")
    }
  }

  Grid(columns: 4, relaxed: true, equal_width: true, divided: true, class: "ui fluid popup") {
    Column {
      Header(size: :h4) { "Fabrics" }
      List(link: true) {
        MenuItem(href: "#") { "Cashmere" }
        MenuItem(href: "#") { "Linen" }
        MenuItem(href: "#") { "Cotton" }
        MenuItem(href: "#") { "Viscose" }
      }
    }
    Column {
      Header(size: :h4) { "Size" }
      List(link: true) {
        MenuItem(href: "#") { "Small" }
        MenuItem(href: "#") { "Medium" }
        MenuItem(href: "#") { "Large" }
        MenuItem(href: "#") { "Plus Sizes" }
      }
    }
    Column {
      Header(size: :h4) { "Colored" }
      List(link: true) {
        MenuItem(href: "#") { "Neutrals" }
        MenuItem(href: "#") { "Brights" }
        MenuItem(href: "#") { "Pastels" }
      }
    }
    Column {
      Header(size: :h4) { "Types" }
      List(link: true) {
        MenuItem(href: "#") { "Knitwear" }
        MenuItem(href: "#") { "Outerwear" }
        MenuItem(href: "#") { "Pants" }
        MenuItem(href: "#") { "Shoes" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    Search(category: true, placeholder: "Search animals...")
  }

  Segment {
    Paragraph { "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(href: "#") { "Browse" }
    MenuItem(href: "#") { "Submit" }
    SubMenu(position: "right") {
      MenuItem(href: "#") { "Sign Up" }
      MenuItem(href: "#") { "Help" }
    }
  }
}

Header { "Vertical Menu with Sub Menus" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem {
      Input(placeholder: "Search...")
    }
    MenuItem {
      text "Home"
      SubMenu {
        MenuItem(active: true, href: "#") { "Search" }
        MenuItem(href: "#") { "Add" }
        MenuItem(href: "#") { "Remove" }
      }
    }
    MenuItem(href: "#", icon: "grid layout") { "Browse" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(dropdown: true) {
      text "More"
      Icon(name: "dropdown")
      SubMenu {
        MenuItem(href: "#", icon: "edit") { "Edit Profile" }
        MenuItem(href: "#", icon: "globe") { "Choose Language" }
        MenuItem(href: "#", icon: "settings") { "Account Settings" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(href: "#") { "A link" }
    MenuItem(link: true) { "div Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(active: true) { "Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(disabled: true) { "Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style; height: 300px;") {
  Menu(fixed: "top") {
    MenuItem { Image(src: "/images/logo.png") }
    MenuItem(href: "#") { "Features" }
    MenuItem(href: "#") { "Testimonials" }
    MenuItem(href: "#") { "Sign-in" }
  }

  Menu(fixed: "bottom") {
    MenuItem { Image(src: "/images/logo.png") }
    MenuItem(href: "#") { "Features" }
    MenuItem(href: "#") { "Testimonials" }
    MenuItem(href: "#") { "Sign-in" }
  }

  Paragraph { "" }
  Paragraph { "" }
}

Header { "Menu" }
Wrapper(style: "contain: layout style; height: 300px;") {
  Menu(fixed: "left", vertical: true) {
    MenuItem { Image(src: "/images/logo.png", size: "mini") }
    MenuItem(href: "#") { "Features" }
    MenuItem(href: "#") { "Testimonials" }
    MenuItem(href: "#") { "Sign-in" }
  }

  Menu(fixed: "right", vertical: true) {
    MenuItem { Image(src: "/images/logo.png", size: "mini") }
    MenuItem(href: "#") { "Features" }
    MenuItem(href: "#") { "Testimonials" }
    MenuItem(href: "#") { "Sign-in" }
  }

  Paragraph { "" }
  Paragraph { "" }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(stackable: true) {
    MenuItem { Image(src: "/images/logo.png") }
    MenuItem(href: "#") { "Features" }
    MenuItem(href: "#") { "Testimonials" }
    MenuItem(href: "#") { "Sign-in" }
  }
}
Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true, vertical: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true, vertical: true, pointing: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Menu(inverted: true, secondary: true) {
      MenuItem(active: true, href: "#") { "Home" }
      MenuItem(href: "#") { "Messages" }
      MenuItem(href: "#") { "Friends" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Menu(inverted: true, secondary: true, pointing: true) {
      MenuItem(active: true, href: "#") { "Home" }
      MenuItem(href: "#") { "Messages" }
      MenuItem(href: "#") { "Friends" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(active: true, color: "red", href: "#") { "Red" }
    MenuItem(color: "orange", href: "#") { "Orange" }
    MenuItem(color: "yellow", href: "#") { "Yellow" }
    MenuItem(color: "olive", href: "#") { "Olive" }
    MenuItem(color: "green", href: "#") { "Green" }
    MenuItem(color: "teal", href: "#") { "Teal" }
  }
  Menu {
    MenuItem(color: "blue", href: "#") { "Blue" }
    MenuItem(color: "violet", href: "#") { "Violet" }
    MenuItem(color: "purple", href: "#") { "Purple" }
    MenuItem(color: "pink", href: "#") { "Pink" }
    MenuItem(color: "brown", href: "#") { "Brown" }
    MenuItem(color: "grey", href: "#") { "Grey" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(color: "red", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "orange", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "yellow", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "olive", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "green", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "teal", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "blue", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "violet", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "purple", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "pink", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "brown", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "grey", items: 3) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true) {
    MenuItem(active: true, color: "red", href: "#") { "Red" }
    MenuItem(color: "orange", href: "#") { "Orange" }
    MenuItem(color: "yellow", href: "#") { "Yellow" }
    MenuItem(color: "olive", href: "#") { "Olive" }
    MenuItem(color: "green", href: "#") { "Green" }
    MenuItem(color: "teal", href: "#") { "Teal" }
  }
  Menu(inverted: true) {
    MenuItem(color: "blue", href: "#") { "Blue" }
    MenuItem(color: "violet", href: "#") { "Violet" }
    MenuItem(color: "purple", href: "#") { "Purple" }
    MenuItem(color: "pink", href: "#") { "Pink" }
    MenuItem(color: "brown", href: "#") { "Brown" }
    MenuItem(color: "grey", href: "#") { "Grey" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(color: "red", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "orange", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "yellow", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "olive", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "green", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "teal", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "blue", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "violet", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "purple", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "pink", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "brown", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
  Menu(color: "grey", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    MenuItem(href: "#") { "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(icon: true) {
    MenuItem(href: "#") { Icon(name: "gamepad") }
    MenuItem(href: "#") { Icon(name: "video camera") }
    MenuItem(href: "#") { Icon(name: "video play") }
  }
  Menu(vertical: true, icon: true) {
    MenuItem(href: "#") { Icon(name: "gamepad") }
    MenuItem(href: "#") { Icon(name: "video camera") }
    MenuItem(href: "#") { Icon(name: "video play") }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(labeled_icon: true) {
    MenuItem(href: "#") {
      Icon(name: "gamepad")
      text "Games"
    }
    MenuItem(href: "#") {
      Icon(name: "video camera")
      text "Channels"
    }
    MenuItem(href: "#") {
      Icon(name: "video play")
      text "Videos"
    }
  }
  Menu(vertical: true, labeled_icon: true) {
    MenuItem(href: "#") {
      Icon(name: "gamepad")
      text "Games"
    }
    MenuItem(href: "#") {
      Icon(name: "video camera")
      text "Channels"
    }
    MenuItem(href: "#") {
      Icon(name: "video play")
      text "Videos"
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(fluid: true, vertical: true) {
    MenuItem(href: "#") { "Run" }
    MenuItem(href: "#") { "Walk" }
    MenuItem(href: "#") { "Bike" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(href: "#") {
      Icon(name: "gamepad")
      text "Games"
    }
    MenuItem(href: "#") {
      Icon(name: "video camera")
      text "Channels"
    }
    MenuItem(href: "#") {
      Icon(name: "video play")
      text "Videos"
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true, vertical: true, labeled_icon: true) {
    MenuItem(href: "#") {
      Icon(name: "gamepad")
      text "Games"
    }
    MenuItem(href: "#") {
      Icon(name: "video camera")
      text "Channels"
    }
    MenuItem(href: "#") {
      Icon(name: "video play")
      text "Videos"
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(class: "equal width") {
    MenuItem(href: "#") { "Buy" }
    MenuItem(href: "#") { "Sell" }
    MenuItem(href: "#") { "Rent" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(items: 3) {
    MenuItem(href: "#") { "Buy" }
    MenuItem(href: "#") { "Sell" }
    MenuItem(href: "#") { "Rent" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(pointing: true, vertical: true) {
    MenuItem(href: "#") { "Site Title" }
    MenuItem {
      text "Grouped Section"
      SubMenu {
        MenuItem(href: "#") { "Subsection 1" }
        MenuItem(active: true, href: "#") { "Subsection 1" }
        MenuItem(href: "#") { "Subsection 1" }
      }
    }
    MenuItem(dropdown: true) {
      text "Dropdown"
      Icon(name: "dropdown")
      SubMenu {
        MenuItem { "Choice 1" }
        MenuItem { "Choice 2" }
        MenuItem { "Choice 3" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(tabular: true, attached: "top") {
    MenuItem(active: true, href: "#") { "Tab 1" }
    MenuItem(href: "#") { "Tab 2" }
  }
  Segment(attached: "bottom") {
    text "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomized words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(attached: "top") {
    MenuItem(active: true, href: "#") { "Section 1" }
    MenuItem(href: "#") { "Section 2" }
  }
  Segment(attached: true) {
    text "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomized words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
  }
  Menu(attached: "bottom") {
    MenuItem(active: true, href: "#") { "Section 1" }
    MenuItem(href: "#") { "Section 2" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "mini") {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { "English" }
          MenuItem(href: "#") { "Russian" }
          MenuItem(href: "#") { "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "tiny") {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { "English" }
          MenuItem(href: "#") { "Russian" }
          MenuItem(href: "#") { "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "small") {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { "English" }
          MenuItem(href: "#") { "Russian" }
          MenuItem(href: "#") { "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "large") {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { "English" }
          MenuItem(href: "#") { "Russian" }
          MenuItem(href: "#") { "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "huge") {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { "English" }
          MenuItem(href: "#") { "Russian" }
          MenuItem(href: "#") { "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "massive") {
    MenuItem(active: true, href: "#") { "Home" }
    MenuItem(href: "#") { "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { "English" }
          MenuItem(href: "#") { "Russian" }
          MenuItem(href: "#") { "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "mini", vertical: true) {
    MenuItem(active: true, href: "#") {
      Tag(color: "green") { "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Tag { "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Tag { "1" }
      text "Updates"
    }
    MenuItem {
      Input(icon: "search", placeholder: "Search mail...")
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "small", vertical: true) {
    MenuItem(active: true, href: "#") {
      Tag(color: "green", size: "small") { "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Tag(size: "small") { "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Tag(size: "small") { "1" }
      text "Updates"
    }
    MenuItem {
      Input(icon: "search", placeholder: "Search mail...")
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "large", vertical: true) {
    MenuItem(active: true, href: "#") {
      Tag(color: "green", size: "small") { "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Tag(size: "small") { "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Tag(size: "small") { "1" }
      text "Updates"
    }
    MenuItem {
      Input(icon: "search", placeholder: "Search mail...")
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "massive", vertical: true) {
    MenuItem(active: true, href: "#") {
      Tag(color: "green", size: "small") { "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Tag(size: "small") { "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Tag(size: "small") { "1" }
      text "Updates"
    }
    MenuItem {
      Input(icon: "search", placeholder: "Search mail...")
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(fitted: "true") { "No padding whatsoever" }
    MenuItem(fitted: "horizontally") { "No horizontal padding" }
    MenuItem(fitted: "vertically") { "No vertical padding" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(borderless: true) {
    MenuItem(href: "#") { "1" }
    MenuItem(href: "#") { "2" }
    MenuItem(href: "#") { "3" }
    MenuItem(href: "#") { "4" }
    MenuItem(href: "#") { "5" }
    MenuItem(href: "#") { "6" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(class: "centered") {
    MenuItem(href: "#", class: "bug popup icon") { Icon(name: "edit") }
    MenuItem(href: "#", class: "bug popup icon") { Icon(name: "bug") }
    MenuItem(href: "#", class: "github popup icon") { Icon(name: "alternate github") }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(pagination: true, class: "centered") {
    MenuItem(active: true, href: "#") { "1" }
    MenuItem(disabled: true) { "..." }
    MenuItem(href: "#") { "10" }
    MenuItem(href: "#") { "11" }
    MenuItem(href: "#") { "12" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(fluid: true, class: "centered") {
    MenuItem(href: "#", class: "bug popup icon") { Icon(name: "edit") }
    MenuItem(href: "#", class: "bug popup icon") { Icon(name: "bug") }
    MenuItem(href: "#", class: "github popup icon") { Icon(name: "alternate github") }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true, color: "green", class: "wrapped wrapping") {
    MenuItem(active: true, href: "#") { "One" }
    MenuItem(href: "#") { "Two" }
    MenuItem(href: "#") { "Three" }
    MenuItem(href: "#") { "Four" }
    MenuItem(href: "#") { "Five" }
    MenuItem(href: "#") { "Six" }
    MenuItem(href: "#") { "Seven" }
    MenuItem(href: "#") { "Eight" }
    MenuItem(href: "#") { "Nine" }
    MenuItem(href: "#") { "Ten" }
    MenuItem(href: "#") { "Eleven" }
    MenuItem(href: "#") { "Twelve" }
    MenuItem(href: "#") { "Thirteen" }
    MenuItem(href: "#") { "Fourteen" }
    MenuItem(href: "#") { "Fifteen" }
    MenuItem(href: "#") { "Sixteen" }
    MenuItem(href: "#") { "Seventeen" }
    MenuItem(href: "#") { "Eighteen" }
    MenuItem(href: "#") { "Nineteen" }
    MenuItem(href: "#") { "Twenty" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true, color: "blue", fluid: true, class: "wrapped centered wrapping") {
    MenuItem(active: true, href: "#") { "One" }
    MenuItem(href: "#") { "Two" }
    MenuItem(href: "#") { "Three" }
    MenuItem(href: "#") { "Four" }
    MenuItem(href: "#") { "Five" }
    MenuItem(href: "#") { "Six" }
    MenuItem(href: "#") { "Seven" }
    MenuItem(href: "#") { "Eight" }
    MenuItem(href: "#") { "Nine" }
    MenuItem(href: "#") { "Ten" }
    MenuItem(href: "#") { "Eleven" }
    MenuItem(href: "#") { "Twelve" }
    MenuItem(href: "#") { "Thirteen" }
    MenuItem(href: "#") { "Fourteen" }
    MenuItem(href: "#") { "Fifteen" }
    MenuItem(href: "#") { "Sixteen" }
    MenuItem(href: "#") { "Seventeen" }
    MenuItem(href: "#") { "Eighteen" }
    MenuItem(href: "#") { "Nineteen" }
    MenuItem(href: "#") { "Twenty" }
  }
}
