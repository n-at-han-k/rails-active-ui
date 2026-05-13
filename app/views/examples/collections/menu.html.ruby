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
          MenuItem { text "Applications" }
          MenuItem { text "International Students" }
          MenuItem { text "Scholarships" }
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
            MenuItem { text "Document" }
            MenuItem { text "Image" }
          }
        }
        MenuItem { text "Open..." }
        MenuItem { text "Save..." }
        MenuItem { text "Edit Permissions" }
        Divider()
        MenuItem(header: true) { text "Export" }
        MenuItem { text "Share..." }
      }
    }
    SubMenu(position: "right") {
      Search(category: true, aligned: "right", placeholder: "Search animals...")
    }
  }

  Segment(attached: "bottom") {
    Paragraph { text "" }
    Paragraph { text "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(secondary: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
    SubMenu(position: "right") {
      MenuItem {
        Input(icon: "search", placeholder: "Search...")
      }
      MenuItem(href: "#") { text "Logout" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(pointing: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
    SubMenu(position: "right") {
      MenuItem {
        Input(transparent: true, icon: "search", placeholder: "Search...")
      }
    }
  }
  Segment {
    Paragraph { text "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(tabular: true, attached: "top") {
    MenuItem(active: true, href: "#") { text "Bio" }
    MenuItem(href: "#") { text "Photos" }
    SubMenu(position: "right") {
      MenuItem {
        Input(transparent: true, icon: "search", placeholder: "Search users...")
      }
    }
  }

  Segment(attached: "bottom") {
    Paragraph { text "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Segment(attached: "top") {
    Paragraph { text "" }
  }

  Menu(tabular: true, attached: "bottom") {
    MenuItem(active: true, href: "#") { text "Active Project" }
    MenuItem(href: "#") { text "Project #2" }
    MenuItem(href: "#") { text "Project #3" }
    SubMenu(position: "right") {
      MenuItem(href: "#", icon: "add") { text "New Tab" }
    }
  }
}

Header { text "Left Tabular" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 4, class: "left attached") {
      Menu(vertical: true, fluid: true, tabular: true) {
        MenuItem(active: true, href: "#") { text "Bio" }
        MenuItem(href: "#") { text "Pics" }
        MenuItem(href: "#") { text "Companies" }
        MenuItem(href: "#") { text "Links" }
      }
    }
    Column(width: 12, class: "stretched right attached") {
      Segment(class: "seamless right attached") {
        text "This is an stretched grid column. This segment will always match the tab height"
      }
    }
  }
}

Header { text "Right Tabular" }
Wrapper(style: "contain: layout style;") {
  Grid {
    Column(width: 12, class: "stretched left attached") {
      Segment(class: "seamless left attached") {
        text "This is an stretched grid column. This segment will always match the tab height"
      }
    }
    Column(width: 4, class: "right attached") {
      Menu(vertical: true, fluid: true, tabular: true, position: "right") {
        MenuItem(active: true, href: "#") { text "Bio" }
        MenuItem(href: "#") { text "Pics" }
        MenuItem(href: "#") { text "Companies" }
        MenuItem(href: "#") { text "Links" }
      }
    }
  }
}

Header { text "Text Menu Sort" }
Wrapper(style: "contain: layout style;") {
  Menu(text: true) {
    MenuItem(header: true) { text "Sort By" }
    MenuItem(active: true, href: "#") { text "Closest" }
    MenuItem(href: "#") { text "Most Comments" }
    MenuItem(href: "#") { text "Most Popular" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(active: true, color: "teal", href: "#") {
      text "Inbox"
      Label(color: "teal", class: "left pointing") { text "1" }
    }
    MenuItem(href: "#") {
      text "Spam"
      Label { text "51" }
    }
    MenuItem(href: "#") {
      text "Updates"
      Label { text "1" }
    }
    MenuItem {
      Input(transparent: true, icon: "search", placeholder: "Search mail...")
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(secondary: true, vertical: true) {
    MenuItem(active: true, href: "#") { text "Account" }
    MenuItem(href: "#") { text "Settings" }
    MenuItem(dropdown: true) {
      Icon(name: "dropdown")
      text "Display Options"
      SubMenu {
        MenuItem(header: true) { text "Text Size" }
        MenuItem(href: "#") { text "Small" }
        MenuItem(href: "#") { text "Medium" }
        MenuItem(href: "#") { text "Large" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true, text: true) {
    MenuItem(header: true) { text "Sort By" }
    MenuItem(active: true, href: "#") { text "Closest" }
    MenuItem(href: "#") { text "Most Comments" }
    MenuItem(href: "#") { text "Most Popular" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true, pointing: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(secondary: true, vertical: true, pointing: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(pagination: true) {
    MenuItem(active: true, href: "#") { text "1" }
    MenuItem(disabled: true) { text "..." }
    MenuItem(href: "#") { text "10" }
    MenuItem(href: "#") { text "11" }
    MenuItem(href: "#") { text "12" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(header: true) { text "Our Company" }
    MenuItem(href: "#") { text "About Us" }
    MenuItem(href: "#") { text "Jobs" }
    MenuItem(href: "#") { text "Locations" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem {
      MenuItem(header: true) { text "Products" }
      SubMenu {
        MenuItem(href: "#") { text "Enterprise" }
        MenuItem(href: "#") { text "Consumer" }
      }
    }
    MenuItem {
      MenuItem(header: true) { text "CMS Solutions" }
      SubMenu {
        MenuItem(href: "#") { text "Rails" }
        MenuItem(href: "#") { text "Python" }
        MenuItem(href: "#") { text "PHP" }
      }
    }
    MenuItem {
      MenuItem(header: true) { text "Hosting" }
      SubMenu {
        MenuItem(href: "#") { text "Shared" }
        MenuItem(href: "#") { text "Dedicated" }
      }
    }
    MenuItem {
      MenuItem(header: true) { text "Support" }
      SubMenu {
        MenuItem(href: "#") { text "E-mail Support" }
        MenuItem(href: "#") { text "FAQs" }
      }
    }
  }
}

Header { text "Vertical Menu with Headers" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(href: "#") {
      Header(size: :h4) { text "Promotions" }
      Paragraph { text "Check out our new promotions" }
    }
    MenuItem(href: "#") {
      Header(size: :h4) { text "Coupons" }
      Paragraph { text "Check out our collection of coupons" }
    }
    MenuItem(href: "#") {
      Header(size: :h4) { text "Rebates" }
      Paragraph { text "Visit our rebate forum for information on claiming rebates" }
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
        Button { text "Go" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem {
      Button(color: "primary") { text "Sign up" }
    }
    MenuItem {
      Button { text "Log-in" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(href: "https://www.google.com") { text "Visit Google" }
    MenuItem(link: true) { text "Javascript Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(dropdown: true) {
      text "Categories"
      Icon(name: "dropdown")
      SubMenu {
        MenuItem(href: "#") { text "Electronics" }
        MenuItem(href: "#") { text "Automotive" }
        MenuItem(href: "#") { text "Home" }
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
      Header(size: :h4) { text "Fabrics" }
      List(link: true) {
        MenuItem(href: "#") { text "Cashmere" }
        MenuItem(href: "#") { text "Linen" }
        MenuItem(href: "#") { text "Cotton" }
        MenuItem(href: "#") { text "Viscose" }
      }
    }
    Column {
      Header(size: :h4) { text "Size" }
      List(link: true) {
        MenuItem(href: "#") { text "Small" }
        MenuItem(href: "#") { text "Medium" }
        MenuItem(href: "#") { text "Large" }
        MenuItem(href: "#") { text "Plus Sizes" }
      }
    }
    Column {
      Header(size: :h4) { text "Colored" }
      List(link: true) {
        MenuItem(href: "#") { text "Neutrals" }
        MenuItem(href: "#") { text "Brights" }
        MenuItem(href: "#") { text "Pastels" }
      }
    }
    Column {
      Header(size: :h4) { text "Types" }
      List(link: true) {
        MenuItem(href: "#") { text "Knitwear" }
        MenuItem(href: "#") { text "Outerwear" }
        MenuItem(href: "#") { text "Pants" }
        MenuItem(href: "#") { text "Shoes" }
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
    Paragraph { text "" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(href: "#") { text "Browse" }
    MenuItem(href: "#") { text "Submit" }
    SubMenu(position: "right") {
      MenuItem(href: "#") { text "Sign Up" }
      MenuItem(href: "#") { text "Help" }
    }
  }
}

Header { text "Vertical Menu with Sub Menus" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem {
      Input(placeholder: "Search...")
    }
    MenuItem {
      text "Home"
      SubMenu {
        MenuItem(active: true, href: "#") { text "Search" }
        MenuItem(href: "#") { text "Add" }
        MenuItem(href: "#") { text "Remove" }
      }
    }
    MenuItem(href: "#", icon: "grid layout") { text "Browse" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(dropdown: true) {
      text "More"
      Icon(name: "dropdown")
      SubMenu {
        MenuItem(href: "#", icon: "edit") { text "Edit Profile" }
        MenuItem(href: "#", icon: "globe") { text "Choose Language" }
        MenuItem(href: "#", icon: "settings") { text "Account Settings" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(href: "#") { text "A link" }
    MenuItem(link: true) { text "div Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(active: true) { text "Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(disabled: true) { text "Link" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style; height: 300px;") {
  Menu(fixed: "top") {
    MenuItem { Image(src: "/images/logo.png") }
    MenuItem(href: "#") { text "Features" }
    MenuItem(href: "#") { text "Testimonials" }
    MenuItem(href: "#") { text "Sign-in" }
  }

  Menu(fixed: "bottom") {
    MenuItem { Image(src: "/images/logo.png") }
    MenuItem(href: "#") { text "Features" }
    MenuItem(href: "#") { text "Testimonials" }
    MenuItem(href: "#") { text "Sign-in" }
  }

  Paragraph { text "" }
  Paragraph { text "" }
}

Header { "Menu" }
Wrapper(style: "contain: layout style; height: 300px;") {
  Menu(fixed: "left", vertical: true) {
    MenuItem { Image(src: "/images/logo.png", size: "mini") }
    MenuItem(href: "#") { text "Features" }
    MenuItem(href: "#") { text "Testimonials" }
    MenuItem(href: "#") { text "Sign-in" }
  }

  Menu(fixed: "right", vertical: true) {
    MenuItem { Image(src: "/images/logo.png", size: "mini") }
    MenuItem(href: "#") { text "Features" }
    MenuItem(href: "#") { text "Testimonials" }
    MenuItem(href: "#") { text "Sign-in" }
  }

  Paragraph { text "" }
  Paragraph { text "" }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(stackable: true) {
    MenuItem { Image(src: "/images/logo.png") }
    MenuItem(href: "#") { text "Features" }
    MenuItem(href: "#") { text "Testimonials" }
    MenuItem(href: "#") { text "Sign-in" }
  }
}
Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true, vertical: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true, vertical: true, pointing: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Menu(inverted: true, secondary: true) {
      MenuItem(active: true, href: "#") { text "Home" }
      MenuItem(href: "#") { text "Messages" }
      MenuItem(href: "#") { text "Friends" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Menu(inverted: true, secondary: true, pointing: true) {
      MenuItem(active: true, href: "#") { text "Home" }
      MenuItem(href: "#") { text "Messages" }
      MenuItem(href: "#") { text "Friends" }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(active: true, color: "red", href: "#") { text "Red" }
    MenuItem(color: "orange", href: "#") { text "Orange" }
    MenuItem(color: "yellow", href: "#") { text "Yellow" }
    MenuItem(color: "olive", href: "#") { text "Olive" }
    MenuItem(color: "green", href: "#") { text "Green" }
    MenuItem(color: "teal", href: "#") { text "Teal" }
  }
  Menu {
    MenuItem(color: "blue", href: "#") { text "Blue" }
    MenuItem(color: "violet", href: "#") { text "Violet" }
    MenuItem(color: "purple", href: "#") { text "Purple" }
    MenuItem(color: "pink", href: "#") { text "Pink" }
    MenuItem(color: "brown", href: "#") { text "Brown" }
    MenuItem(color: "grey", href: "#") { text "Grey" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(color: "red", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "orange", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "yellow", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "olive", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "green", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "teal", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "blue", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "violet", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "purple", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "pink", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "brown", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "grey", items: 3) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true) {
    MenuItem(active: true, color: "red", href: "#") { text "Red" }
    MenuItem(color: "orange", href: "#") { text "Orange" }
    MenuItem(color: "yellow", href: "#") { text "Yellow" }
    MenuItem(color: "olive", href: "#") { text "Olive" }
    MenuItem(color: "green", href: "#") { text "Green" }
    MenuItem(color: "teal", href: "#") { text "Teal" }
  }
  Menu(inverted: true) {
    MenuItem(color: "blue", href: "#") { text "Blue" }
    MenuItem(color: "violet", href: "#") { text "Violet" }
    MenuItem(color: "purple", href: "#") { text "Purple" }
    MenuItem(color: "pink", href: "#") { text "Pink" }
    MenuItem(color: "brown", href: "#") { text "Brown" }
    MenuItem(color: "grey", href: "#") { text "Grey" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(color: "red", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "orange", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "yellow", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "olive", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "green", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "teal", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "blue", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "violet", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "purple", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "pink", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "brown", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
  }
  Menu(color: "grey", items: 3, inverted: true) {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    MenuItem(href: "#") { text "Friends" }
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
    MenuItem(href: "#") { text "Run" }
    MenuItem(href: "#") { text "Walk" }
    MenuItem(href: "#") { text "Bike" }
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
    MenuItem(href: "#") { text "Buy" }
    MenuItem(href: "#") { text "Sell" }
    MenuItem(href: "#") { text "Rent" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(items: 3) {
    MenuItem(href: "#") { text "Buy" }
    MenuItem(href: "#") { text "Sell" }
    MenuItem(href: "#") { text "Rent" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(pointing: true, vertical: true) {
    MenuItem(href: "#") { text "Site Title" }
    MenuItem {
      text "Grouped Section"
      SubMenu {
        MenuItem(href: "#") { text "Subsection 1" }
        MenuItem(active: true, href: "#") { text "Subsection 1" }
        MenuItem(href: "#") { text "Subsection 1" }
      }
    }
    MenuItem(dropdown: true) {
      text "Dropdown"
      Icon(name: "dropdown")
      SubMenu {
        MenuItem { text "Choice 1" }
        MenuItem { text "Choice 2" }
        MenuItem { text "Choice 3" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(tabular: true, attached: "top") {
    MenuItem(active: true, href: "#") { text "Tab 1" }
    MenuItem(href: "#") { text "Tab 2" }
  }
  Segment(attached: "bottom") {
    text "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomized words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(attached: "top") {
    MenuItem(active: true, href: "#") { text "Section 1" }
    MenuItem(href: "#") { text "Section 2" }
  }
  Segment(attached: true) {
    text "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomized words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
  }
  Menu(attached: "bottom") {
    MenuItem(active: true, href: "#") { text "Section 1" }
    MenuItem(href: "#") { text "Section 2" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "mini") {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { text "English" }
          MenuItem(href: "#") { text "Russian" }
          MenuItem(href: "#") { text "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { text "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "tiny") {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { text "English" }
          MenuItem(href: "#") { text "Russian" }
          MenuItem(href: "#") { text "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { text "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "small") {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { text "English" }
          MenuItem(href: "#") { text "Russian" }
          MenuItem(href: "#") { text "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { text "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "large") {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { text "English" }
          MenuItem(href: "#") { text "Russian" }
          MenuItem(href: "#") { text "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { text "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "huge") {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { text "English" }
          MenuItem(href: "#") { text "Russian" }
          MenuItem(href: "#") { text "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { text "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "massive") {
    MenuItem(active: true, href: "#") { text "Home" }
    MenuItem(href: "#") { text "Messages" }
    SubMenu(position: "right") {
      MenuItem(dropdown: true) {
        text "Language"
        Icon(name: "dropdown")
        SubMenu {
          MenuItem(href: "#") { text "English" }
          MenuItem(href: "#") { text "Russian" }
          MenuItem(href: "#") { text "Spanish" }
        }
      }
      MenuItem {
        Button(color: "primary") { text "Sign Up" }
      }
    }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(size: "mini", vertical: true) {
    MenuItem(active: true, href: "#") {
      Label(color: "green") { text "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Label { text "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Label { text "1" }
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
      Label(color: "green", size: "small") { text "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Label(size: "small") { text "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Label(size: "small") { text "1" }
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
      Label(color: "green", size: "small") { text "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Label(size: "small") { text "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Label(size: "small") { text "1" }
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
      Label(color: "green", size: "small") { text "1" }
      text "Inbox"
    }
    MenuItem(href: "#") {
      Label(size: "small") { text "51" }
      text "Spam"
    }
    MenuItem(href: "#") {
      Label(size: "small") { text "1" }
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
    MenuItem(fitted: "true") { text "No padding whatsoever" }
    MenuItem(fitted: "horizontally") { text "No horizontal padding" }
    MenuItem(fitted: "vertically") { text "No vertical padding" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(borderless: true) {
    MenuItem(href: "#") { text "1" }
    MenuItem(href: "#") { text "2" }
    MenuItem(href: "#") { text "3" }
    MenuItem(href: "#") { text "4" }
    MenuItem(href: "#") { text "5" }
    MenuItem(href: "#") { text "6" }
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
    MenuItem(active: true, href: "#") { text "1" }
    MenuItem(disabled: true) { text "..." }
    MenuItem(href: "#") { text "10" }
    MenuItem(href: "#") { text "11" }
    MenuItem(href: "#") { text "12" }
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
    MenuItem(active: true, href: "#") { text "One" }
    MenuItem(href: "#") { text "Two" }
    MenuItem(href: "#") { text "Three" }
    MenuItem(href: "#") { text "Four" }
    MenuItem(href: "#") { text "Five" }
    MenuItem(href: "#") { text "Six" }
    MenuItem(href: "#") { text "Seven" }
    MenuItem(href: "#") { text "Eight" }
    MenuItem(href: "#") { text "Nine" }
    MenuItem(href: "#") { text "Ten" }
    MenuItem(href: "#") { text "Eleven" }
    MenuItem(href: "#") { text "Twelve" }
    MenuItem(href: "#") { text "Thirteen" }
    MenuItem(href: "#") { text "Fourteen" }
    MenuItem(href: "#") { text "Fifteen" }
    MenuItem(href: "#") { text "Sixteen" }
    MenuItem(href: "#") { text "Seventeen" }
    MenuItem(href: "#") { text "Eighteen" }
    MenuItem(href: "#") { text "Nineteen" }
    MenuItem(href: "#") { text "Twenty" }
  }
}

Header { "Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(inverted: true, color: "blue", fluid: true, class: "wrapped centered wrapping") {
    MenuItem(active: true, href: "#") { text "One" }
    MenuItem(href: "#") { text "Two" }
    MenuItem(href: "#") { text "Three" }
    MenuItem(href: "#") { text "Four" }
    MenuItem(href: "#") { text "Five" }
    MenuItem(href: "#") { text "Six" }
    MenuItem(href: "#") { text "Seven" }
    MenuItem(href: "#") { text "Eight" }
    MenuItem(href: "#") { text "Nine" }
    MenuItem(href: "#") { text "Ten" }
    MenuItem(href: "#") { text "Eleven" }
    MenuItem(href: "#") { text "Twelve" }
    MenuItem(href: "#") { text "Thirteen" }
    MenuItem(href: "#") { text "Fourteen" }
    MenuItem(href: "#") { text "Fifteen" }
    MenuItem(href: "#") { text "Sixteen" }
    MenuItem(href: "#") { text "Seventeen" }
    MenuItem(href: "#") { text "Eighteen" }
    MenuItem(href: "#") { text "Nineteen" }
    MenuItem(href: "#") { text "Twenty" }
  }
}
