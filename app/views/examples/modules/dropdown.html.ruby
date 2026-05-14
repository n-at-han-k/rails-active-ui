# ============================================================
# Definition Tab — Types
# ============================================================

Header { "Dropdown" }
Wrapper(style: "contain: layout style;") {
  Dropdown(placeholder: "File") {
    MenuItem { "New" }
    MenuItem {
      Text(class: "description") { "ctrl + o" }
      NbSpace()
      Text { "Open..." }
    }
    MenuItem {
      Text(class: "description") { "ctrl + s" }
      NbSpace()
      Text { "Save as..." }
    }
    MenuItem {
      Text(class: "description") { "ctrl + r" }
      NbSpace()
      Text { "Rename" }
    }
    MenuItem { "Make a copy" }
    MenuItem {
      Icon(name: "folder")
      NbSpace()
      Text { "Move to folder" }
    }
    MenuItem {
      Icon(name: "trash")
      NbSpace()
      Text { "Move to trash" }
    }
    Divider()
    MenuItem { "Download As..." }
    MenuItem {
      Icon(name: "dropdown")
      NbSpace()
      Text { "Publish To Web" }
      SubMenu {
        MenuItem { "Google Docs" }
        MenuItem { "Google Drive" }
        MenuItem { "Dropbox" }
        MenuItem { "Adobe Creative Cloud" }
        MenuItem { "Private FTP" }
        MenuItem { "Another Service..." }
      }
    }
    MenuItem { "E-mail Collaborators" }
  }
}

Header { "Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, name: "pet", placeholder: "Pet") {
    MenuItem(value: "0") { "Cat" }
    MenuItem(value: "1") { "Dog" }
    MenuItem(value: "2") { "Bird" }
    MenuItem(value: "3") { "Rabbit" }
    MenuItem(value: "4") { "Squirrel" }
    MenuItem(value: "5") { "Horse" }
    MenuItem(value: "6") { "Turtle" }
    MenuItem(value: "7") { "Parrot" }
  }
}

Header { "Selection with Avatars" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, fluid: true, name: "user", placeholder: "Select Friend") {
    MenuItem(value: "jenny") {
      Image(src: "/images/avatar/small/jenny.jpg", class: "ui mini avatar")
      NbSpace()
      Text { "Jenny Hess" }
    }
    MenuItem(value: "elliot") {
      Image(src: "/images/avatar/small/elliot.jpg", class: "ui mini avatar")
      NbSpace()
      Text { "Elliot Fu" }
    }
    MenuItem(value: "stevie") {
      Image(src: "/images/avatar/small/stevie.jpg", class: "ui mini avatar")
      NbSpace()
      Text { "Stevie Feliciano" }
    }
    MenuItem(value: "christian") {
      Image(src: "/images/avatar/small/christian.jpg", class: "ui mini avatar")
      NbSpace()
      Text { "Christian" }
    }
    MenuItem(value: "matt") {
      Image(src: "/images/avatar/small/matt.jpg", class: "ui mini avatar")
      NbSpace()
      Text { "Matt" }
    }
    MenuItem(value: "justen") {
      Image(src: "/images/avatar/small/justen.jpg", class: "ui mini avatar")
      NbSpace()
      Text { "Justen Kitsune" }
    }
  }
}

Header { "Search Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(search: true, selection: true, fluid: true, name: "country", placeholder: "Select Country") {
    MenuItem(value: "af") { Flag(name: "af"); NbSpace(); Text { "Afghanistan" } }
    MenuItem(value: "ax") { Flag(name: "ax"); NbSpace(); Text { "Aland Islands" } }
    MenuItem(value: "al") { Flag(name: "al"); NbSpace(); Text { "Albania" } }
    MenuItem(value: "dz") { Flag(name: "dz"); NbSpace(); Text { "Algeria" } }
    MenuItem(value: "as") { Flag(name: "as"); NbSpace(); Text { "American Samoa" } }
    MenuItem(value: "ad") { Flag(name: "ad"); NbSpace(); Text { "Andorra" } }
    MenuItem(value: "ao") { Flag(name: "ao"); NbSpace(); Text { "Angola" } }
    MenuItem(value: "ai") { Flag(name: "ai"); NbSpace(); Text { "Anguilla" } }
    MenuItem(value: "ag") { Flag(name: "ag"); NbSpace(); Text { "Antigua" } }
    MenuItem(value: "ar") { Flag(name: "ar"); NbSpace(); Text { "Argentina" } }
    MenuItem(value: "am") { Flag(name: "am"); NbSpace(); Text { "Armenia" } }
    MenuItem(value: "au") { Flag(name: "au"); NbSpace(); Text { "Australia" } }
    MenuItem(value: "at") { Flag(name: "at"); NbSpace(); Text { "Austria" } }
    MenuItem(value: "br") { Flag(name: "br"); NbSpace(); Text { "Brazil" } }
    MenuItem(value: "ca") { Flag(name: "ca"); NbSpace(); Text { "Canada" } }
    MenuItem(value: "cn") { Flag(name: "cn"); NbSpace(); Text { "China" } }
    MenuItem(value: "dk") { Flag(name: "dk"); NbSpace(); Text { "Denmark" } }
    MenuItem(value: "fi") { Flag(name: "fi"); NbSpace(); Text { "Finland" } }
    MenuItem(value: "fr") { Flag(name: "fr"); NbSpace(); Text { "France" } }
    MenuItem(value: "de") { Flag(name: "de"); NbSpace(); Text { "Germany" } }
    MenuItem(value: "gr") { Flag(name: "gr"); NbSpace(); Text { "Greece" } }
    MenuItem(value: "in") { Flag(name: "in"); NbSpace(); Text { "India" } }
    MenuItem(value: "ie") { Flag(name: "ie"); NbSpace(); Text { "Ireland" } }
    MenuItem(value: "it") { Flag(name: "it"); NbSpace(); Text { "Italy" } }
    MenuItem(value: "jp") { Flag(name: "jp"); NbSpace(); Text { "Japan" } }
    MenuItem(value: "mx") { Flag(name: "mx"); NbSpace(); Text { "Mexico" } }
    MenuItem(value: "nl") { Flag(name: "nl"); NbSpace(); Text { "Netherlands" } }
    MenuItem(value: "nz") { Flag(name: "nz"); NbSpace(); Text { "New Zealand" } }
    MenuItem(value: "no") { Flag(name: "no"); NbSpace(); Text { "Norway" } }
    MenuItem(value: "pl") { Flag(name: "pl"); NbSpace(); Text { "Poland" } }
    MenuItem(value: "pt") { Flag(name: "pt"); NbSpace(); Text { "Portugal" } }
    MenuItem(value: "ru") { Flag(name: "ru"); NbSpace(); Text { "Russia" } }
    MenuItem(value: "es") { Flag(name: "es"); NbSpace(); Text { "Spain" } }
    MenuItem(value: "se") { Flag(name: "se"); NbSpace(); Text { "Sweden" } }
    MenuItem(value: "ch") { Flag(name: "ch"); NbSpace(); Text { "Switzerland" } }
    MenuItem(value: "gb") { Flag(name: "gb"); NbSpace(); Text { "United Kingdom" } }
    MenuItem(value: "us") { Flag(name: "us"); NbSpace(); Text { "United States" } }
  }
}

Header { "Clearable Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(clearable: true, selection: true, name: "language", placeholder: "Select Language", default_value: "english") {
    MenuItem { "Arabic" }
    MenuItem { "Chinese" }
    MenuItem { "Danish" }
    MenuItem { "Dutch" }
    MenuItem { "English" }
    MenuItem { "French" }
    MenuItem { "German" }
    MenuItem { "Greek" }
    MenuItem { "Hungarian" }
    MenuItem { "Italian" }
    MenuItem { "Japanese" }
    MenuItem { "Korean" }
    MenuItem { "Lithuanian" }
    MenuItem { "Persian" }
    MenuItem { "Polish" }
    MenuItem { "Portuguese" }
    MenuItem { "Russian" }
    MenuItem { "Spanish" }
    MenuItem { "Swedish" }
    MenuItem { "Turkish" }
    MenuItem { "Vietnamese" }
  }
}

Header { "Clearable Multiple Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(clearable: true, multiple: true, selection: true, name: "languages", placeholder: "Select Languages", default_value: "dutch,english,french") {
    MenuItem { "Arabic" }
    MenuItem { "Chinese" }
    MenuItem { "Danish" }
    MenuItem { "Dutch" }
    MenuItem { "English" }
    MenuItem { "French" }
    MenuItem { "German" }
    MenuItem { "Greek" }
    MenuItem { "Hungarian" }
    MenuItem { "Italian" }
    MenuItem { "Japanese" }
    MenuItem { "Korean" }
    MenuItem { "Lithuanian" }
    MenuItem { "Persian" }
    MenuItem { "Polish" }
    MenuItem { "Portuguese" }
    MenuItem { "Russian" }
    MenuItem { "Spanish" }
    MenuItem { "Swedish" }
    MenuItem { "Turkish" }
    MenuItem { "Vietnamese" }
  }
}

Header { "Multiple Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, fluid: true, name: "skills", placeholder: "Skills") {
    MenuItem(value: "angular") { "Angular" }
    MenuItem(value: "css") { "CSS" }
    MenuItem(value: "design") { "Graphic Design" }
    MenuItem(value: "ember") { "Ember" }
    MenuItem(value: "html") { "HTML" }
    MenuItem(value: "ia") { "Information Architecture" }
    MenuItem(value: "javascript") { "Javascript" }
    MenuItem(value: "mech") { "Mechanical Engineering" }
    MenuItem(value: "meteor") { "Meteor" }
    MenuItem(value: "node") { "NodeJS" }
    MenuItem(value: "plumbing") { "Plumbing" }
    MenuItem(value: "python") { "Python" }
    MenuItem(value: "rails") { "Rails" }
    MenuItem(value: "react") { "React" }
    MenuItem(value: "repair") { "Kitchen Repair" }
    MenuItem(value: "ruby") { "Ruby" }
    MenuItem(value: "ui") { "UI Design" }
    MenuItem(value: "ux") { "User Experience" }
  }
}

Header { "Multiple Search Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, search: true, selection: true, fluid: true, name: "states", placeholder: "State") {
    MenuItem(value: "AL") { "Alabama" }
    MenuItem(value: "AK") { "Alaska" }
    MenuItem(value: "AZ") { "Arizona" }
    MenuItem(value: "AR") { "Arkansas" }
    MenuItem(value: "CA") { "California" }
    MenuItem(value: "CO") { "Colorado" }
    MenuItem(value: "CT") { "Connecticut" }
    MenuItem(value: "DE") { "Delaware" }
    MenuItem(value: "DC") { "District Of Columbia" }
    MenuItem(value: "FL") { "Florida" }
    MenuItem(value: "GA") { "Georgia" }
    MenuItem(value: "HI") { "Hawaii" }
    MenuItem(value: "ID") { "Idaho" }
    MenuItem(value: "IL") { "Illinois" }
    MenuItem(value: "IN") { "Indiana" }
    MenuItem(value: "IA") { "Iowa" }
    MenuItem(value: "KS") { "Kansas" }
    MenuItem(value: "KY") { "Kentucky" }
    MenuItem(value: "LA") { "Louisiana" }
    MenuItem(value: "ME") { "Maine" }
    MenuItem(value: "MD") { "Maryland" }
    MenuItem(value: "MA") { "Massachusetts" }
    MenuItem(value: "MI") { "Michigan" }
    MenuItem(value: "MN") { "Minnesota" }
    MenuItem(value: "MS") { "Mississippi" }
    MenuItem(value: "MO") { "Missouri" }
    MenuItem(value: "MT") { "Montana" }
    MenuItem(value: "NE") { "Nebraska" }
    MenuItem(value: "NV") { "Nevada" }
    MenuItem(value: "NH") { "New Hampshire" }
    MenuItem(value: "NJ") { "New Jersey" }
    MenuItem(value: "NM") { "New Mexico" }
    MenuItem(value: "NY") { "New York" }
    MenuItem(value: "NC") { "North Carolina" }
    MenuItem(value: "ND") { "North Dakota" }
    MenuItem(value: "OH") { "Ohio" }
    MenuItem(value: "OK") { "Oklahoma" }
    MenuItem(value: "OR") { "Oregon" }
    MenuItem(value: "PA") { "Pennsylvania" }
    MenuItem(value: "RI") { "Rhode Island" }
    MenuItem(value: "SC") { "South Carolina" }
    MenuItem(value: "SD") { "South Dakota" }
    MenuItem(value: "TN") { "Tennessee" }
    MenuItem(value: "TX") { "Texas" }
    MenuItem(value: "UT") { "Utah" }
    MenuItem(value: "VT") { "Vermont" }
    MenuItem(value: "VA") { "Virginia" }
    MenuItem(value: "WA") { "Washington" }
    MenuItem(value: "WV") { "West Virginia" }
    MenuItem(value: "WI") { "Wisconsin" }
    MenuItem(value: "WY") { "Wyoming" }
  }
}

Header { "Multiple Search Selection with Flags" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, search: true, selection: true, fluid: true, name: "country", placeholder: "Select Country") {
    MenuItem(value: "af") { Flag(name: "af"); NbSpace(); Text { "Afghanistan" } }
    MenuItem(value: "al") { Flag(name: "al"); NbSpace(); Text { "Albania" } }
    MenuItem(value: "ar") { Flag(name: "ar"); NbSpace(); Text { "Argentina" } }
    MenuItem(value: "au") { Flag(name: "au"); NbSpace(); Text { "Australia" } }
    MenuItem(value: "at") { Flag(name: "at"); NbSpace(); Text { "Austria" } }
    MenuItem(value: "br") { Flag(name: "br"); NbSpace(); Text { "Brazil" } }
    MenuItem(value: "ca") { Flag(name: "ca"); NbSpace(); Text { "Canada" } }
    MenuItem(value: "cn") { Flag(name: "cn"); NbSpace(); Text { "China" } }
    MenuItem(value: "dk") { Flag(name: "dk"); NbSpace(); Text { "Denmark" } }
    MenuItem(value: "fi") { Flag(name: "fi"); NbSpace(); Text { "Finland" } }
    MenuItem(value: "fr") { Flag(name: "fr"); NbSpace(); Text { "France" } }
    MenuItem(value: "de") { Flag(name: "de"); NbSpace(); Text { "Germany" } }
    MenuItem(value: "gr") { Flag(name: "gr"); NbSpace(); Text { "Greece" } }
    MenuItem(value: "in") { Flag(name: "in"); NbSpace(); Text { "India" } }
    MenuItem(value: "ie") { Flag(name: "ie"); NbSpace(); Text { "Ireland" } }
    MenuItem(value: "it") { Flag(name: "it"); NbSpace(); Text { "Italy" } }
    MenuItem(value: "jp") { Flag(name: "jp"); NbSpace(); Text { "Japan" } }
    MenuItem(value: "mx") { Flag(name: "mx"); NbSpace(); Text { "Mexico" } }
    MenuItem(value: "nl") { Flag(name: "nl"); NbSpace(); Text { "Netherlands" } }
    MenuItem(value: "nz") { Flag(name: "nz"); NbSpace(); Text { "New Zealand" } }
    MenuItem(value: "no") { Flag(name: "no"); NbSpace(); Text { "Norway" } }
    MenuItem(value: "pl") { Flag(name: "pl"); NbSpace(); Text { "Poland" } }
    MenuItem(value: "pt") { Flag(name: "pt"); NbSpace(); Text { "Portugal" } }
    MenuItem(value: "ru") { Flag(name: "ru"); NbSpace(); Text { "Russia" } }
    MenuItem(value: "es") { Flag(name: "es"); NbSpace(); Text { "Spain" } }
    MenuItem(value: "se") { Flag(name: "se"); NbSpace(); Text { "Sweden" } }
    MenuItem(value: "ch") { Flag(name: "ch"); NbSpace(); Text { "Switzerland" } }
    MenuItem(value: "gb") { Flag(name: "gb"); NbSpace(); Text { "United Kingdom" } }
    MenuItem(value: "us") { Flag(name: "us"); NbSpace(); Text { "United States" } }
  }
}

Header { "Search Dropdown" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, search: true, button: true, placeholder: "Select Language") {
    MenuItem { "Arabic" }
    MenuItem { "Chinese" }
    MenuItem { "Danish" }
    MenuItem { "Dutch" }
    MenuItem { "English" }
    MenuItem { "French" }
    MenuItem { "German" }
    MenuItem { "Greek" }
    MenuItem { "Hungarian" }
    MenuItem { "Italian" }
    MenuItem { "Japanese" }
    MenuItem { "Korean" }
    MenuItem { "Lithuanian" }
    MenuItem { "Persian" }
    MenuItem { "Polish" }
    MenuItem { "Portuguese" }
    MenuItem { "Russian" }
    MenuItem { "Spanish" }
    MenuItem { "Swedish" }
    MenuItem { "Turkish" }
    MenuItem { "Vietnamese" }
  }
}

Header { "Search In-Menu" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter Posts") {
    Input(icon: "search", placeholder: "Search tags...")
    Divider()
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Tag Label" }
    }
    SubMenu(class: "scrolling") {
      MenuItem {
        Tag(color: "red", circular: true, empty: true)
        NbSpace()
        Text { "Important" }
      }
      MenuItem {
        Tag(color: "blue", circular: true, empty: true)
        NbSpace()
        Text { "Announcement" }
      }
      MenuItem {
        Tag(color: "black", circular: true, empty: true)
        NbSpace()
        Text { "Cannot Fix" }
      }
      MenuItem {
        Tag(color: "purple", circular: true, empty: true)
        NbSpace()
        Text { "News" }
      }
      MenuItem {
        Tag(color: "orange", circular: true, empty: true)
        NbSpace()
        Text { "Enhancement" }
      }
      MenuItem {
        Tag(circular: true, empty: true)
        NbSpace()
        Text { "Change Declined" }
      }
      MenuItem {
        Tag(color: "yellow", circular: true, empty: true)
        NbSpace()
        Text { "Off Topic" }
      }
      MenuItem {
        Tag(color: "pink", circular: true, empty: true)
        NbSpace()
        Text { "Interesting" }
      }
      MenuItem {
        Tag(color: "green", circular: true, empty: true)
        NbSpace()
        Text { "Discussion" }
      }
    }
  }
}

Header { "Multiple Filter with Search In-Menu" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, name: "filters", placeholder: "Filter Posts") {
    Input(icon: "search", placeholder: "Search tags...")
    Divider()
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Tag Label" }
    }
    SubMenu(class: "scrolling") {
      MenuItem(value: "important") {
        Tag(color: "red", circular: true, empty: true)
        NbSpace()
        Text { "Important" }
      }
      MenuItem(value: "announcement") {
        Tag(color: "blue", circular: true, empty: true)
        NbSpace()
        Text { "Announcement" }
      }
      MenuItem(value: "cannotfix") {
        Tag(color: "black", circular: true, empty: true)
        NbSpace()
        Text { "Cannot Fix" }
      }
      MenuItem(value: "news") {
        Tag(color: "purple", circular: true, empty: true)
        NbSpace()
        Text { "News" }
      }
      MenuItem(value: "enhancement") {
        Tag(color: "orange", circular: true, empty: true)
        NbSpace()
        Text { "Enhancement" }
      }
      MenuItem(value: "off-topic") {
        Tag(color: "yellow", circular: true, empty: true)
        NbSpace()
        Text { "Off Topic" }
      }
      MenuItem(value: "interesting") {
        Tag(color: "pink", circular: true, empty: true)
        NbSpace()
        Text { "Interesting" }
      }
      MenuItem(value: "discussion") {
        Tag(color: "green", circular: true, empty: true)
        NbSpace()
        Text { "Discussion" }
      }
    }
  }
}

Header { "Inline" }
Wrapper(style: "contain: layout style;") {
  Text {
    Text { "Show me posts by " }
    Dropdown(inline: true, placeholder: "Jenny Hess") {
      MenuItem {
        Image(src: "/images/avatar/small/jenny.jpg", class: "ui avatar")
        NbSpace()
        Text { "Jenny Hess" }
      }
      MenuItem {
        Image(src: "/images/avatar/small/elliot.jpg", class: "ui avatar")
        NbSpace()
        Text { "Elliot Fu" }
      }
      MenuItem {
        Image(src: "/images/avatar/small/stevie.jpg", class: "ui avatar")
        NbSpace()
        Text { "Stevie Feliciano" }
      }
      MenuItem {
        Image(src: "/images/avatar/small/christian.jpg", class: "ui avatar")
        NbSpace()
        Text { "Christian" }
      }
      MenuItem {
        Image(src: "/images/avatar/small/matt.jpg", class: "ui avatar")
        NbSpace()
        Text { "Matt" }
      }
      MenuItem {
        Image(src: "/images/avatar/small/justen.jpg", class: "ui avatar")
        NbSpace()
        Text { "Justen Kitsune" }
      }
    }
  }
}

Header { "Inline Trending" }
Wrapper(style: "contain: layout style;") {
  Header(size: :h4) {
    Icon(name: "trophy")
    Text(class: "content") {
      Text { "Trending repos " }
      Dropdown(inline: true, placeholder: "today") {
        MenuItem(header: true) { "Adjust time span" }
        MenuItem(class: "active", data: { text: "today" }) { "Today" }
        MenuItem(data: { text: "this week" }) { "This Week" }
        MenuItem(data: { text: "this month" }) { "This Month" }
      }
    }
  }
}

Header { "Pointing" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(href: "#") { "Home" }
    MenuItem(dropdown: true) {
      Text(class: "text") { "Shopping" }
      Icon(name: "dropdown")
      SubMenu {
        MenuItem(header: true) { "Categories" }
        MenuItem {
          Icon(name: "dropdown")
          Text(class: "text") { "Clothing" }
          SubMenu {
            MenuItem(header: true) { "Mens" }
            MenuItem { "Shirts" }
            MenuItem { "Pants" }
            MenuItem { "Jeans" }
            MenuItem { "Shoes" }
            Divider()
            MenuItem(header: true) { "Womens" }
            MenuItem { "Dresses" }
            MenuItem { "Shoes" }
            MenuItem { "Bags" }
          }
        }
        MenuItem { "Home Goods" }
        MenuItem { "Bedroom" }
        Divider()
        MenuItem(header: true) { "Order" }
        MenuItem { "Status" }
        MenuItem { "Cancellations" }
      }
    }
    MenuItem(href: "#") { "Forums" }
    MenuItem(href: "#") { "Contact Us" }
  }
}

Header { "Pointing Vertical" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(href: "#") { "Home" }
    MenuItem(dropdown: true, class: "left pointing") {
      Icon(name: "dropdown")
      NbSpace()
      Text { "Messages" }
      SubMenu {
        MenuItem { "Inbox" }
        MenuItem { "Starred" }
        MenuItem { "Sent Mail" }
        MenuItem { "Drafts (143)" }
        Divider()
        MenuItem { "Spam (1009)" }
        MenuItem { "Trash" }
      }
    }
    MenuItem(href: "#") { "Browse" }
    MenuItem(href: "#") { "Help" }
  }
}

Header { "Top Left Pointing Button" }
Wrapper(style: "contain: layout style;") {
  Dropdown(button: true, pointing: "top left", class: "icon") {
    Icon(name: "wrench")
    SubMenu {
      MenuItem(header: true) { "Display Density" }
      MenuItem { "Comfortable" }
      MenuItem { "Cozy" }
      MenuItem { "Compact" }
      Divider()
      MenuItem { "Settings" }
      MenuItem {
        Icon(name: "dropdown")
        Text(class: "text") { "Upload Settings" }
        SubMenu {
          MenuItem {
            Icon(name: "check")
            NbSpace()
            Text { "Convert Uploaded Files to PDF" }
          }
          MenuItem {
            Icon(name: "check")
            NbSpace()
            Text { "Digitize Text from Uploaded Files" }
          }
        }
      }
      MenuItem { "Manage Apps" }
      MenuItem { "Keyboard Shortcuts" }
      MenuItem { "Help" }
    }
  }
}

Header { "Bottom Pointing Buttons" }
Wrapper(style: "contain: layout style;") {
  Dropdown(button: true, pointing: "bottom left", class: "icon") {
    Icon(name: "wrench")
    SubMenu {
      MenuItem {
        Icon(name: "dropdown")
        Text(class: "text") { "New" }
        SubMenu {
          MenuItem { "Document" }
          MenuItem { "Image" }
        }
      }
      MenuItem { "Save As..." }
      MenuItem { "Edit" }
    }
  }
  Dropdown(button: true, pointing: "bottom right", class: "icon") {
    Icon(name: "wrench")
    SubMenu {
      MenuItem {
        Icon(name: "dropdown")
        Text(class: "text") { "New" }
        SubMenu {
          MenuItem { "Document" }
          MenuItem { "Image" }
        }
      }
      MenuItem { "Save As..." }
      MenuItem { "Edit" }
    }
  }
}

Header { "Labeled Icon Pointing Button" }
Wrapper(style: "contain: layout style;") {
  Dropdown(labeled: true, button: true, pointing: "top left") {
    Icon(name: "filter")
    Text(class: "text") { "Filter Posts" }
    SubMenu {
      Input(icon: "search", placeholder: "Search issues...")
      Divider()
      MenuItem(header: true) {
        Icon(name: "tags")
        NbSpace()
        Text { "Filter by tag" }
      }
      MenuItem {
        Tag(color: "red", circular: true, empty: true)
        NbSpace()
        Text { "Important" }
      }
      MenuItem {
        Tag(color: "blue", circular: true, empty: true)
        NbSpace()
        Text { "Announcement" }
      }
      MenuItem {
        Tag(color: "black", circular: true, empty: true)
        NbSpace()
        Text { "Discussion" }
      }
      Divider()
      MenuItem(header: true) {
        Icon(name: "calendar")
        NbSpace()
        Text { "Filter by date" }
      }
      MenuItem {
        Icon(name: "olive circle")
        NbSpace()
        Text { "This Week" }
      }
      MenuItem {
        Icon(name: "violet circle")
        NbSpace()
        Text { "This Month" }
      }
      MenuItem {
        Icon(name: "orange circle")
        NbSpace()
        Text { "This Year" }
      }
    }
  }
}

Header { "Right and Left Pointing Buttons" }
Wrapper(style: "contain: layout style;") {
  Dropdown(button: true, pointing: "right", class: "icon") {
    Icon(name: "settings")
    SubMenu {
      Input(icon: "search", icon_position: "left", placeholder: "Search issues...")
      Divider()
      MenuItem(header: true) {
        Icon(name: "tags")
        NbSpace()
        Text { "Filter by tag" }
      }
      MenuItem {
        Tag(color: "red", circular: true, empty: true)
        NbSpace()
        Text { "Important" }
      }
      MenuItem {
        Tag(color: "blue", circular: true, empty: true)
        NbSpace()
        Text { "Announcement" }
      }
      MenuItem {
        Tag(color: "black", circular: true, empty: true)
        NbSpace()
        Text { "Discussion" }
      }
    }
  }
  Dropdown(button: true, pointing: "left", class: "icon") {
    Icon(name: "settings")
    SubMenu {
      Input(icon: "search", icon_position: "left", placeholder: "Search issues...")
      MenuItem(header: true) {
        Icon(name: "tags")
        NbSpace()
        Text { "Tag Label" }
      }
      MenuItem {
        Tag(color: "red", circular: true, empty: true)
        NbSpace()
        Text { "Important" }
      }
      MenuItem {
        Tag(color: "blue", circular: true, empty: true)
        NbSpace()
        Text { "Announcement" }
      }
      MenuItem {
        Tag(color: "black", circular: true, empty: true)
        NbSpace()
        Text { "Discussion" }
      }
    }
  }
}

Header { "Floating" }
Wrapper(style: "contain: layout style;") {
  ButtonGroup(color: "teal") {
    Button { "Save" }
    Dropdown(floating: true, button: true) {
      MenuItem {
        Icon(name: "edit")
        NbSpace()
        Text { "Edit Post" }
      }
      MenuItem {
        Icon(name: "delete")
        NbSpace()
        Text { "Remove Post" }
      }
      MenuItem {
        Icon(name: "hide")
        NbSpace()
        Text { "Hide Post" }
      }
    }
  }
}

Header { "Simple" }
Wrapper(style: "contain: layout style;") {
  Menu(compact: true) {
    MenuItem(dropdown: true) {
      Text { "Dropdown" }
      Icon(name: "dropdown")
      SubMenu {
        MenuItem { "Choice 1" }
        MenuItem { "Choice 2" }
        MenuItem { "Choice 3" }
      }
    }
  }
}

# ============================================================
# Definition Tab — Content
# ============================================================

Header { "Header" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter") {
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Filter by tag" }
    }
    MenuItem { "Important" }
    MenuItem { "Announcement" }
    MenuItem { "Discussion" }
  }
}

Header { "Divider" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter") {
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Filter by tag" }
    }
    Divider()
    MenuItem { "Important" }
    MenuItem { "Announcement" }
    MenuItem { "Discussion" }
  }
}

Header { "Icon" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter") {
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Filter by tag" }
    }
    Divider()
    MenuItem {
      Icon(name: "attention")
      NbSpace()
      Text { "Important" }
    }
    MenuItem {
      Icon(name: "comment")
      NbSpace()
      Text { "Announcement" }
    }
    MenuItem {
      Icon(name: "conversation")
      NbSpace()
      Text { "Discussion" }
    }
  }
}

Header { "Description" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter Tags") {
    MenuItem(header: true) { "Filter by tag" }
    Divider()
    MenuItem {
      Text(class: "description") { "2 new" }
      Text(class: "text") { "Important" }
    }
    MenuItem {
      Text(class: "description") { "10 new" }
      Text(class: "text") { "Hopper" }
    }
    MenuItem {
      Text(class: "description") { "5 new" }
      Text(class: "text") { "Discussion" }
    }
  }
}

Header { "Vertical Description" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter Tags") {
    MenuItem(header: true) { "Filter by tag" }
    Divider()
    MenuItem(class: "vertical") {
      Text(class: "description") { "2 new" }
      Text(class: "text") { "Important" }
    }
    MenuItem(class: "vertical") {
      Text(class: "description") { "10 new" }
      Text(class: "text") { "Hopper" }
    }
    MenuItem(class: "vertical") {
      Text(class: "description") { "5 new" }
      Text(class: "text") { "Discussion" }
    }
  }
}

Header { "Label" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter") {
    MenuItem(header: true) { "Search Issues" }
    Input(icon: "search", icon_position: "left", placeholder: "Search...")
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Filter by tag" }
    }
    MenuItem {
      Tag(color: "red", circular: true, empty: true)
      NbSpace()
      Text { "Important" }
    }
    MenuItem {
      Tag(color: "blue", circular: true, empty: true)
      NbSpace()
      Text { "Announcement" }
    }
    MenuItem {
      Tag(color: "black", circular: true, empty: true)
      NbSpace()
      Text { "Discussion" }
    }
  }
}

Header { "Message" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Login") {
    Message(class: "error") {
      Header(size: :h4) { "Error" }
      Paragraph { "You must log-in to see all categories" }
    }
  }
}

Header { "Floated Content" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, fluid: true, placeholder: "Select Type") {
    MenuItem {
      Icon(name: "attention", class: "right floated")
      NbSpace()
      Text { "Important" }
    }
    MenuItem {
      Icon(name: "comment", class: "right floated")
      NbSpace()
      Text { "Announcement" }
    }
    MenuItem {
      Icon(name: "conversation", class: "right floated")
      NbSpace()
      Text { "Discussion" }
    }
  }
}

Header { "Input" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Filter") {
    MenuItem(header: true) { "Search Issues" }
    Input(icon: "search", icon_position: "left", placeholder: "Search...")
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Filter by tag" }
    }
    Divider()
    MenuItem {
      Tag(color: "red", circular: true, empty: true)
      NbSpace()
      Text { "Important" }
    }
    MenuItem {
      Tag(color: "blue", circular: true, empty: true)
      NbSpace()
      Text { "Announcement" }
    }
    MenuItem {
      Tag(color: "black", circular: true, empty: true)
      NbSpace()
      Text { "Discussion" }
    }
  }
}

Header { "Image" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Add User") {
    MenuItem(header: true) { "People You Might Know" }
    MenuItem {
      Image(src: "/images/avatar/small/jenny.jpg", class: "ui avatar")
      NbSpace()
      Text { "Jenny Hess" }
    }
    MenuItem {
      Image(src: "/images/avatar/small/elliot.jpg", class: "ui avatar")
      NbSpace()
      Text { "Elliot Fu" }
    }
    MenuItem {
      Image(src: "/images/avatar/small/stevie.jpg", class: "ui avatar")
      NbSpace()
      Text { "Stevie Feliciano" }
    }
    MenuItem(header: true) { "Your Friends' Friends" }
    MenuItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "ui avatar")
      NbSpace()
      Text { "Christian" }
    }
    MenuItem {
      Image(src: "/images/avatar/small/matt.jpg", class: "ui avatar")
      NbSpace()
      Text { "Matt" }
    }
    MenuItem {
      Image(src: "/images/avatar/small/justen.jpg", class: "ui avatar")
      NbSpace()
      Text { "Justen Kitsune" }
    }
  }
}

# ============================================================
# Definition Tab — States
# ============================================================

Header { "Loading" }
Wrapper(style: "contain: layout style;") {
  Dropdown(loading: true, placeholder: "Dropdown") {
    MenuItem { "Choice 1" }
    MenuItem { "Choice 2" }
    MenuItem { "Choice 3" }
  }
}

Header { "Error" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, class: "error", placeholder: "Dropdown") {
    MenuItem { "Choice 1" }
    MenuItem { "Choice 2" }
    MenuItem { "Choice 3" }
  }
}

Header { "Error Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, class: "error", placeholder: "Dropdown") {
    MenuItem { "Choice 1" }
    MenuItem { "Choice 2" }
    MenuItem { "Choice 3" }
  }
}

Header { "Disabled" }
Wrapper(style: "contain: layout style;") {
  Dropdown(disabled: true, placeholder: "Dropdown") {
    MenuItem { "Choice 1" }
    MenuItem { "Choice 2" }
    MenuItem { "Choice 3" }
  }
}

Header { "Disabled Item" }
Wrapper(style: "contain: layout style;") {
  Dropdown(placeholder: "Disabled Item") {
    MenuItem { "Choice 1" }
    MenuItem(disabled: true) { "Disabled" }
    MenuItem { "Choice 3" }
  }
}

Header { "Read-Only" }
Wrapper(style: "contain: layout style;") {
  Dropdown(class: "read-only", placeholder: "Dropdown") {
    MenuItem { "Choice 1" }
    MenuItem { "Choice 2" }
    MenuItem { "Choice 3" }
  }
}

# ============================================================
# Definition Tab — Variations
# ============================================================

Header { "Size" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, name: "gender", placeholder: "Mini", class: "mini") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
  Dropdown(selection: true, name: "gender", placeholder: "Tiny", class: "tiny") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
  Dropdown(selection: true, name: "gender", placeholder: "Small", class: "small") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
  Dropdown(selection: true, name: "gender", placeholder: "Medium", class: "medium") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
  Dropdown(selection: true, name: "gender", placeholder: "Large", class: "large") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
}

Header { "Size Big/Huge/Massive" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, name: "gender", placeholder: "Big", class: "big") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
  Dropdown(selection: true, name: "gender", placeholder: "Huge", class: "huge") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
  Dropdown(selection: true, name: "gender", placeholder: "Massive", class: "massive") {
    MenuItem(value: "1") { "Male" }
    MenuItem(value: "0") { "Female" }
  }
}

Header { "Scrolling" }
Wrapper(style: "contain: layout style;") {
  Dropdown(scrolling: true, name: "gender", placeholder: "Select choice") {
    MenuItem { "Choice 1" }
    MenuItem { "Choice 2" }
    MenuItem { "Choice 3" }
    MenuItem { "Choice 4" }
    MenuItem { "Choice 5" }
    MenuItem { "Choice 6" }
    MenuItem { "Choice 7" }
    MenuItem { "Choice 8" }
    MenuItem { "Choice 9" }
    MenuItem { "Choice 10" }
    MenuItem { "Choice 11" }
    MenuItem { "Choice 12" }
    MenuItem { "Choice 13" }
    MenuItem { "Choice 14" }
    MenuItem { "Choice 15" }
  }
}

Header { "Scrolling Menu" }
Wrapper(style: "contain: layout style;") {
  Dropdown(placeholder: "Filter Posts") {
    Input(icon: "search", placeholder: "Search tags...")
    Divider()
    MenuItem(header: true) {
      Icon(name: "tags")
      NbSpace()
      Text { "Tag Label" }
    }
    SubMenu(class: "scrolling") {
      MenuItem {
        Tag(color: "red", circular: true, empty: true)
        NbSpace()
        Text { "Important" }
      }
      MenuItem {
        Tag(color: "blue", circular: true, empty: true)
        NbSpace()
        Text { "Announcement" }
      }
      MenuItem {
        Tag(color: "black", circular: true, empty: true)
        NbSpace()
        Text { "Cannot Fix" }
      }
      MenuItem {
        Tag(color: "purple", circular: true, empty: true)
        NbSpace()
        Text { "News" }
      }
      MenuItem {
        Tag(color: "orange", circular: true, empty: true)
        NbSpace()
        Text { "Enhancement" }
      }
      MenuItem {
        Tag(circular: true, empty: true)
        NbSpace()
        Text { "Change Declined" }
      }
      MenuItem {
        Tag(color: "yellow", circular: true, empty: true)
        NbSpace()
        Text { "Off Topic" }
      }
      MenuItem {
        Tag(color: "pink", circular: true, empty: true)
        NbSpace()
        Text { "Interesting" }
      }
      MenuItem {
        Tag(color: "green", circular: true, empty: true)
        NbSpace()
        Text { "Discussion" }
      }
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Dropdown(selection: true, name: "choices", placeholder: "Select choice", class: "inverted") {
      MenuItem { "Choice 1" }
      MenuItem { "Choice 2" }
      MenuItem { "Choice 3" }
      MenuItem { "Choice 4" }
      MenuItem { "Choice 5" }
      MenuItem { "Choice 6" }
      MenuItem { "Choice 7" }
      MenuItem { "Choice 8" }
      MenuItem { "Choice 9" }
    }
  }
}

Header { "Inverted Menu" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, name: "choices", placeholder: "Select choice") {
    SubMenu(class: "inverted") {
      MenuItem { "Choice 1" }
      MenuItem { "Choice 2" }
      MenuItem { "Choice 3" }
      MenuItem { "Choice 4" }
      MenuItem { "Choice 5" }
      MenuItem { "Choice 6" }
      MenuItem { "Choice 7" }
      MenuItem { "Choice 8" }
      MenuItem { "Choice 9" }
    }
  }
}

Header { "Compact" }
Wrapper(style: "contain: layout style;") {
  Dropdown(compact: true, selection: true, placeholder: "Compact") {
    MenuItem { "A" }
    MenuItem { "B" }
    MenuItem { "C" }
  }
  Dropdown(compact: true, selection: true, placeholder: "Compact") {
    MenuItem { "A very long line here" }
    MenuItem { "B" }
    MenuItem { "C" }
  }
}

Header { "Fluid" }
Wrapper(style: "contain: layout style;") {
  Menu(vertical: true) {
    MenuItem(href: "#") { "Link 1" }
    MenuItem(href: "#") { "Link 2" }
    MenuItem(header: true) { "All Sections" }
    MenuItem {
      Dropdown(fluid: true, selection: true, placeholder: "More") {
        MenuItem { "Choice 1" }
        MenuItem { "Choice 2" }
        MenuItem { "Choice 3" }
      }
    }
  }
}

Header { "Menu Direction" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Menu") {
    MenuItem {
      Icon(name: "left dropdown")
      Text(class: "text") { "Left" }
      SubMenu(position: "left") {
        MenuItem { "1" }
        MenuItem { "2" }
        MenuItem { "3" }
      }
    }
    MenuItem {
      Icon(name: "dropdown")
      Text(class: "text") { "Right" }
      SubMenu(position: "right") {
        MenuItem { "1" }
        MenuItem { "2" }
        MenuItem { "3" }
      }
    }
  }
}

Header { "Left Direction Nested" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, labeled: true, button: true, placeholder: "Menu") {
    SubMenu(position: "left") {
      MenuItem {
        Icon(name: "dropdown")
        Text(class: "text") { "Left" }
        SubMenu {
          MenuItem {
            Icon(name: "dropdown")
            Text(class: "text") { "Still Left" }
            SubMenu {
              MenuItem { "1" }
              MenuItem { "2" }
              MenuItem { "3" }
            }
          }
          MenuItem { "2" }
          MenuItem { "3" }
        }
      }
      MenuItem {
        Icon(name: "dropdown")
        Text(class: "text") { "Left 2" }
        SubMenu {
          MenuItem { "1" }
          MenuItem { "2" }
          MenuItem { "3" }
        }
      }
    }
  }
}

# ============================================================
# Examples Tab — Selection Dropdowns
# ============================================================

Header { "Clearable" }
Wrapper(style: "contain: layout style;") {
  Dropdown(search: true, selection: true, fluid: true, clearable: true, name: "country", placeholder: "Select Country") {
    MenuItem(value: "af") { Flag(name: "af"); NbSpace(); Text { "Afghanistan" } }
    MenuItem(value: "al") { Flag(name: "al"); NbSpace(); Text { "Albania" } }
    MenuItem(value: "ar") { Flag(name: "ar"); NbSpace(); Text { "Argentina" } }
    MenuItem(value: "au") { Flag(name: "au"); NbSpace(); Text { "Australia" } }
    MenuItem(value: "br") { Flag(name: "br"); NbSpace(); Text { "Brazil" } }
    MenuItem(value: "ca") { Flag(name: "ca"); NbSpace(); Text { "Canada" } }
    MenuItem(value: "cn") { Flag(name: "cn"); NbSpace(); Text { "China" } }
    MenuItem(value: "dk") { Flag(name: "dk"); NbSpace(); Text { "Denmark" } }
    MenuItem(value: "fr") { Flag(name: "fr"); NbSpace(); Text { "France" } }
    MenuItem(value: "de") { Flag(name: "de"); NbSpace(); Text { "Germany" } }
    MenuItem(value: "in") { Flag(name: "in"); NbSpace(); Text { "India" } }
    MenuItem(value: "it") { Flag(name: "it"); NbSpace(); Text { "Italy" } }
    MenuItem(value: "jp") { Flag(name: "jp"); NbSpace(); Text { "Japan" } }
    MenuItem(value: "mx") { Flag(name: "mx"); NbSpace(); Text { "Mexico" } }
    MenuItem(value: "nl") { Flag(name: "nl"); NbSpace(); Text { "Netherlands" } }
    MenuItem(value: "ru") { Flag(name: "ru"); NbSpace(); Text { "Russia" } }
    MenuItem(value: "es") { Flag(name: "es"); NbSpace(); Text { "Spain" } }
    MenuItem(value: "gb") { Flag(name: "gb"); NbSpace(); Text { "United Kingdom" } }
    MenuItem(value: "us") { Flag(name: "us"); NbSpace(); Text { "United States" } }
  }
  Divider()
  Segment(class: "secondary") {
    Text { "Show me " }
    Dropdown(inline: true, scrolling: true, name: "skill", default_value: "css", placeholder: "css") {
      MenuItem(value: "angular") { "Angular" }
      MenuItem(value: "css") { "CSS" }
      MenuItem(value: "design") { "Graphic Design" }
      MenuItem(value: "ember") { "Ember" }
      MenuItem(value: "html") { "HTML" }
      MenuItem(value: "ia") { "Information Architecture" }
      MenuItem(value: "javascript") { "Javascript" }
      MenuItem(value: "mech") { "Mechanical Engineering" }
      MenuItem(value: "meteor") { "Meteor" }
      MenuItem(value: "node") { "NodeJS" }
      MenuItem(value: "plumbing") { "Plumbing" }
      MenuItem(value: "python") { "Python" }
      MenuItem(value: "rails") { "Rails" }
      MenuItem(value: "react") { "React" }
      MenuItem(value: "repair") { "Kitchen Repair" }
      MenuItem(value: "ruby") { "Ruby" }
      MenuItem(value: "ui") { "UI Design" }
      MenuItem(value: "ux") { "User Experience" }
    }
    NbSpace()
    Text { "classes currently available." }
  }
}

Header { "Maximum Selections" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, fluid: true, name: "skills", placeholder: "Skills (max 3)") {
    MenuItem(value: "angular") { "Angular" }
    MenuItem(value: "css") { "CSS" }
    MenuItem(value: "design") { "Graphic Design" }
    MenuItem(value: "ember") { "Ember" }
    MenuItem(value: "html") { "HTML" }
    MenuItem(value: "ia") { "Information Architecture" }
    MenuItem(value: "javascript") { "Javascript" }
    MenuItem(value: "mech") { "Mechanical Engineering" }
    MenuItem(value: "meteor") { "Meteor" }
    MenuItem(value: "node") { "NodeJS" }
    MenuItem(value: "plumbing") { "Plumbing" }
    MenuItem(value: "python") { "Python" }
    MenuItem(value: "rails") { "Rails" }
    MenuItem(value: "react") { "React" }
    MenuItem(value: "repair") { "Kitchen Repair" }
    MenuItem(value: "ruby") { "Ruby" }
    MenuItem(value: "ui") { "UI Design" }
    MenuItem(value: "ux") { "User Experience" }
  }
}

Header { "Tagging and User Additions" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, search: true, selection: true, fluid: true, name: "tags", placeholder: "Skills") {
    MenuItem(value: "angular") { "Angular" }
    MenuItem(value: "css") { "CSS" }
    MenuItem(value: "design") { "Graphic Design" }
    MenuItem(value: "ember") { "Ember" }
    MenuItem(value: "html") { "HTML" }
    MenuItem(value: "ia") { "Information Architecture" }
    MenuItem(value: "javascript") { "Javascript" }
    MenuItem(value: "mech") { "Mechanical Engineering" }
    MenuItem(value: "meteor") { "Meteor" }
    MenuItem(value: "node") { "NodeJS" }
    MenuItem(value: "plumbing") { "Plumbing" }
    MenuItem(value: "python") { "Python" }
    MenuItem(value: "rails") { "Rails" }
    MenuItem(value: "react") { "React" }
    MenuItem(value: "repair") { "Kitchen Repair" }
    MenuItem(value: "ruby") { "Ruby" }
    MenuItem(value: "ui") { "UI Design" }
    MenuItem(value: "ux") { "User Experience" }
  }
}

# ============================================================
# Examples Tab — Menus
# ============================================================

Header { "Multiple Levels" }
Wrapper(style: "contain: layout style;") {
  Text { "My favorite animal breed is " }
  Dropdown(inline: true, name: "breed", placeholder: "Shiba Inu") {
    MenuItem {
      Icon(name: "dropdown")
      Text(class: "text") { "Dogs" }
      SubMenu {
        MenuItem { "Shiba Inu" }
        MenuItem {
          Icon(name: "dropdown")
          Text(class: "text") { "Poodle" }
          SubMenu {
            MenuItem { "Toy" }
            MenuItem { "Standard" }
          }
        }
        MenuItem { "Labrador" }
      }
    }
    MenuItem {
      Icon(name: "dropdown")
      Text(class: "text") { "Cats" }
      SubMenu {
        MenuItem { "Aegean" }
        MenuItem { "Balinese" }
        MenuItem { "Persian" }
      }
    }
  }
}

Header { "Category Selection" }
Wrapper(style: "contain: layout style;") {
  Dropdown(button: true, placeholder: "Choose Category") {
    MenuItem {
      Text(class: "text") { "Category 1" }
    }
    MenuItem {
      Icon(name: "dropdown")
      Text(class: "text") { "Category 2" }
      SubMenu {
        MenuItem { "Item 2A" }
        MenuItem { "Item 2B" }
        MenuItem { "Item 2C" }
      }
    }
    MenuItem {
      Icon(name: "dropdown")
      Text(class: "text") { "Category 3" }
      SubMenu {
        MenuItem { "Item 3A" }
        MenuItem { "Item 3B" }
        MenuItem { "Item 3C" }
      }
    }
  }
}

Header { "Preserving User Selections" }
Wrapper(style: "contain: layout style;") {
  Text { "Current action: " }
  Dropdown(inline: true, placeholder: "Hide") {
    MenuItem { "Edit" }
    MenuItem { "Remove" }
    MenuItem { "Hide" }
  }
}

Header { "Changing Transitions" }
Wrapper(style: "contain: layout style;") {
  ButtonGroup(color: "teal") {
    Button { "Toggle" }
    Dropdown(floating: true, button: true) {
      MenuItem(value: "drop") { "Drop" }
      MenuItem(value: "horizontal flip") { "Horizontal Flip" }
      MenuItem(value: "fade up") { "Fade Up" }
      MenuItem(value: "scale") { "Scale" }
    }
  }
}

# ============================================================
# Examples Tab — Coupling
# ============================================================

Header { "Button Group" }
Wrapper(style: "contain: layout style;") {
  ButtonGroup(icon: true) {
    Dropdown(button: true, pointing: "top left") {
      Icon(name: "user")
      SubMenu {
        MenuItem {
          Icon(name: "edit")
          NbSpace()
          Text { "Edit User" }
        }
        MenuItem {
          Icon(name: "delete")
          NbSpace()
          Text { "Remove User" }
        }
        MenuItem {
          Icon(name: "hide")
          NbSpace()
          Text { "Make Invisible" }
        }
      }
    }
    Dropdown(button: true, pointing: "top left") {
      Icon(name: "users")
      SubMenu {
        MenuItem {
          Icon(name: "edit")
          NbSpace()
          Text { "Edit Group" }
        }
        MenuItem {
          Icon(name: "delete")
          NbSpace()
          Text { "Remove Group" }
        }
        MenuItem {
          Icon(name: "hide")
          NbSpace()
          Text { "Hide from Group" }
        }
      }
    }
    Dropdown(button: true, pointing: "top right") {
      Icon(name: "settings")
      SubMenu {
        MenuItem {
          Icon(name: "edit")
          NbSpace()
          Text { "Edit" }
        }
        MenuItem {
          Icon(name: "delete")
          NbSpace()
          Text { "Remove" }
        }
        MenuItem {
          Icon(name: "hide")
          NbSpace()
          Text { "Hide" }
        }
      }
    }
  }
}

Header { "Menu with Dropdown" }
Wrapper(style: "contain: layout style;") {
  Menu {
    MenuItem(href: "#") { "Home" }
    MenuItem(dropdown: true) {
      Text { "Messages" }
      Icon(name: "dropdown")
      SubMenu {
        MenuItem {
          Icon(name: "dropdown")
          Text(class: "text") { "Categories" }
          SubMenu {
            MenuItem { "Unread" }
            MenuItem { "Promotions" }
            MenuItem { "Updates" }
          }
        }
        MenuItem { "Archive" }
      }
    }
    MenuItem(href: "#") { "Browse" }
  }
}

Header { "Form" }
Wrapper(style: "contain: layout style;") {
  Segment(class: "ui form") {
    FieldsGroup(class: "two") {
      Input(name: "first_name", label: "First Name", placeholder: "First Name")
      Input(name: "last_name", label: "Last Name", placeholder: "Last Name")
    }
    Input(label: "Gender") {
      Dropdown(selection: true, name: "gender", placeholder: "Select Gender") {
        MenuItem(value: "male") { "Male" }
        MenuItem(value: "female") { "Female" }
      }
    }
  }
}

# ============================================================
# Examples Tab — Dropdown Dividers / Headers
# ============================================================

Header { "Dropdown Dividers / Headers" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3, class: "stackable") {
    Column {
      SubHeader { "false" }
      Dropdown(labeled: true, button: true, pointing: "top left", placeholder: "Filter Posts") {
        Input(icon: "search", placeholder: "Search issues...")
        Divider()
        MenuItem(header: true) {
          Icon(name: "tags")
          NbSpace()
          Text { "Filter by tag" }
        }
        MenuItem {
          Tag(color: "red", circular: true, empty: true)
          NbSpace()
          Text { "Important" }
        }
        MenuItem {
          Tag(color: "blue", circular: true, empty: true)
          NbSpace()
          Text { "Announcement" }
        }
        MenuItem {
          Tag(color: "black", circular: true, empty: true)
          NbSpace()
          Text { "Discussion" }
        }
        Divider()
        MenuItem(header: true) {
          Icon(name: "calendar")
          NbSpace()
          Text { "Filter by date" }
        }
        MenuItem {
          Icon(name: "olive circle")
          NbSpace()
          Text { "This Week" }
        }
        MenuItem {
          Icon(name: "violet circle")
          NbSpace()
          Text { "This Month" }
        }
        MenuItem {
          Icon(name: "orange circle")
          NbSpace()
          Text { "This Year" }
        }
      }
    }
    Column {
      SubHeader { "true" }
      Dropdown(labeled: true, button: true, pointing: "top left", placeholder: "Filter Posts") {
        Input(icon: "search", placeholder: "Search issues...")
        Divider()
        MenuItem(header: true) {
          Icon(name: "tags")
          NbSpace()
          Text { "Filter by tag" }
        }
        MenuItem {
          Tag(color: "red", circular: true, empty: true)
          NbSpace()
          Text { "Important" }
        }
        MenuItem {
          Tag(color: "blue", circular: true, empty: true)
          NbSpace()
          Text { "Announcement" }
        }
        MenuItem {
          Tag(color: "black", circular: true, empty: true)
          NbSpace()
          Text { "Discussion" }
        }
        Divider()
        MenuItem(header: true) {
          Icon(name: "calendar")
          NbSpace()
          Text { "Filter by date" }
        }
        MenuItem {
          Icon(name: "olive circle")
          NbSpace()
          Text { "This Week" }
        }
        MenuItem {
          Icon(name: "violet circle")
          NbSpace()
          Text { "This Month" }
        }
        MenuItem {
          Icon(name: "orange circle")
          NbSpace()
          Text { "This Year" }
        }
      }
    }
    Column {
      SubHeader { "'empty'" }
      Dropdown(labeled: true, button: true, pointing: "top left", placeholder: "Filter Posts") {
        Input(icon: "search", placeholder: "Search issues...")
        Divider()
        MenuItem(header: true) {
          Icon(name: "tags")
          NbSpace()
          Text { "Filter by tag" }
        }
        MenuItem {
          Tag(color: "red", circular: true, empty: true)
          NbSpace()
          Text { "Important" }
        }
        MenuItem {
          Tag(color: "blue", circular: true, empty: true)
          NbSpace()
          Text { "Announcement" }
        }
        MenuItem {
          Tag(color: "black", circular: true, empty: true)
          NbSpace()
          Text { "Discussion" }
        }
        Divider()
        MenuItem(header: true) {
          Icon(name: "calendar")
          NbSpace()
          Text { "Filter by date" }
        }
        MenuItem {
          Icon(name: "olive circle")
          NbSpace()
          Text { "This Week" }
        }
        MenuItem {
          Icon(name: "violet circle")
          NbSpace()
          Text { "This Month" }
        }
        MenuItem {
          Icon(name: "orange circle")
          NbSpace()
          Text { "This Year" }
        }
      }
    }
  }
}

# ============================================================
# Examples Tab — Adjusting Actions
# ============================================================

Header { "Combo Dropdowns" }
Wrapper(style: "contain: layout style;") {
  ButtonGroup(color: "teal") {
    Button { "Save" }
    Dropdown(button: true, pointing: "top right", action: "combo") {
      MenuItem {
        Icon(name: "edit")
        NbSpace()
        Text { "Edit" }
      }
      MenuItem {
        Icon(name: "delete")
        NbSpace()
        Text { "Delete" }
      }
      MenuItem {
        Icon(name: "hide")
        NbSpace()
        Text { "Hide" }
      }
    }
  }
}

Header { "Link Dropdowns" }
Wrapper(style: "contain: layout style;") {
  Dropdown(floating: true, button: true, placeholder: "Go to", action: "hide") {
    MenuItem(href: "#link1") {
      Icon(name: "home")
      NbSpace()
      Text { "Home" }
    }
    MenuItem(href: "#link2") {
      Icon(name: "users")
      NbSpace()
      Text { "Browse" }
    }
    MenuItem(href: "#link3") {
      Icon(name: "search")
      NbSpace()
      Text { "Search" }
    }
  }
}

# ============================================================
# Examples Tab — Upward
# ============================================================

Header { "Upward" }
Wrapper(style: "contain: layout style;") {
  Segment(attached: "top") {
    Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
  }
  Menu(attached: "bottom") {
    MenuItem(dropdown: true, class: "upward") {
      Icon(name: "settings")
      SubMenu {
        MenuItem {
          Icon(name: "dropdown")
          Text(class: "text") { "New" }
          SubMenu {
            MenuItem { "Document" }
            MenuItem { "Image" }
          }
        }
        MenuItem { "Save As..." }
        MenuItem { "Edit" }
      }
    }
  }
}

# ============================================================
# Examples Tab — Clearing / Restoring
# ============================================================

Header { "Clearing Dropdown" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, selection: true, name: "gender", default_value: "0,1", placeholder: "Default") {
    MenuItem(value: "0") { "Value" }
    MenuItem(value: "1") { "Another Value" }
  }
  Dropdown(selection: true, name: "gender2", placeholder: "Select a value") {
    MenuItem(value: "0") { "Value" }
    MenuItem(value: "1") { "Another Value" }
  }
}

Header { "Restoring Defaults" }
Wrapper(style: "contain: layout style;") {
  Dropdown(multiple: true, selection: true, name: "restore", default_value: "default,default2", placeholder: "Default") {
    MenuItem(value: "0") { "Value" }
    MenuItem(value: "1") { "Another Value" }
    MenuItem(value: "default") { "Default Value" }
    MenuItem(value: "default2") { "Second Default" }
  }
  Divider()
  Dropdown(selection: true, name: "restore2", default_value: "default", placeholder: "Select a value") {
    MenuItem(value: "0") { "Value" }
    MenuItem(value: "1") { "Another Value" }
  }
  Divider()
  Dropdown(selection: true, name: "restore3", default_value: "default", placeholder: "Default Value") {
    MenuItem(value: "0") { "Value" }
    MenuItem(value: "1") { "Another Value" }
    MenuItem(value: "default") { "Default Value" }
  }
}

# ============================================================
# Examples Tab — Unlimited / Submenus in Selection
# ============================================================

Header { "Unlimited Selection with Submenus" }
Wrapper(style: "contain: layout style;") {
  Dropdown(selection: true, name: "example", placeholder: "Select an option", class: "unlimited") {
    MenuItem {
      Text(class: "text") { "Category 1" }
    }
    MenuItem {
      Icon(name: "dropdown")
      Text(class: "text") { "Category 2" }
      SubMenu {
        MenuItem { "Item 2A" }
        MenuItem { "Item 2B" }
        MenuItem { "Item 2C" }
      }
    }
    MenuItem {
      Icon(name: "dropdown")
      Text(class: "text") { "Category 3" }
      SubMenu {
        MenuItem { "Item 3A" }
        MenuItem { "Item 3B" }
        MenuItem { "Item 3C" }
      }
    }
  }
}
