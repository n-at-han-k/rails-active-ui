Header { "List" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem { "Apples" }
    ListItem { "Pears" }
    ListItem { "Oranges" }
  }
}

Header { "List" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem(icon: "users") {
      ListContent { "Fomantic UI" }
    }
    ListItem(icon: "marker") {
      ListContent { "Worldwide" }
    }
    ListItem(icon: "mail") {
      ListContent { "contact@fomantic-ui.com" }
    }
    ListItem(icon: "linkify") {
      ListContent { "fomantic-ui.com" }
    }
  }
}

Header { "List" }
Wrapper(style: "contain: layout style;") {
  List(relaxed: true, divided: true) {
    ListItem {
      Icon(name: "large github middle aligned")
      ListContent {
        ListHeader(href: "#") { "fomantic/Fomantic-UI" }
        ListDescription { "Updated 10 mins ago" }
      }
    }
    ListItem {
      Icon(name: "large github middle aligned")
      ListContent {
        ListHeader(href: "#") { "fomantic/Fomantic-UI-Docs" }
        ListDescription { "Updated 22 mins ago" }
      }
    }
    ListItem {
      Icon(name: "large github middle aligned")
      ListContent {
        ListHeader(href: "#") { "fomantic/Fomantic-UI-LESS" }
        ListDescription { "Updated 34 mins ago" }
      }
    }
  }
}

Header { "List" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem(icon: "folder") {
      ListContent {
        ListHeader { "src" }
        ListDescription { "Source files for project" }
        List {
          ListItem(icon: "folder") {
            ListContent {
              ListHeader { "site" }
              ListDescription { "Your site's theme" }
            }
          }
          ListItem(icon: "folder") {
            ListContent {
              ListHeader { "themes" }
              ListDescription { "Packaged theme files" }
              List {
                ListItem(icon: "folder") {
                  ListContent {
                    ListHeader { "default" }
                    ListDescription { "Default packaged theme" }
                  }
                }
                ListItem(icon: "folder") {
                  ListContent {
                    ListHeader { "my_theme" }
                    ListDescription { "Packaged themes are also available in this folder" }
                  }
                }
              }
            }
          }
          ListItem(icon: "file") {
            ListContent {
              ListHeader { "theme.config" }
              ListDescription { "Config file for setting packaged themes" }
            }
          }
        }
      }
    }
    ListItem(icon: "folder") {
      ListContent {
        ListHeader { "dist" }
        ListDescription { "Compiled CSS and JS files" }
        List {
          ListItem(icon: "folder") {
            ListContent {
              ListHeader { "components" }
              ListDescription { "Individual component CSS and JS" }
            }
          }
        }
      }
    }
    ListItem(icon: "file") {
      ListContent {
        ListHeader { "semantic.json" }
        ListDescription { "Contains build settings for gulp" }
      }
    }
  }
}

Header { "Bulleted List" }
Wrapper(style: "contain: layout style;") {
  List(bulleted: true) {
    ListItem { "Gaining Access" }
    ListItem { "Inviting Friends" }
    ListItem {
      text "Benefits"
      List {
        ListItem(href: "#") { "Link to somewhere" }
        ListItem { "Rebates" }
        ListItem { "Discounts" }
      }
    }
    ListItem { "Warranty" }
  }
}

Header { "Horizontal Bulleted List" }
Wrapper(style: "contain: layout style;") {
  List(horizontal: true, bulleted: true) {
    ListItem(href: "#") { "About Us" }
    ListItem(href: "#") { "Sitemap" }
    ListItem(href: "#") { "Contact" }
  }
}

Header { "Ordered List" }
Wrapper(style: "contain: layout style;") {
  List(ordered: true) {
    ListItem(href: "#") { "Getting Started" }
    ListItem(href: "#") { "Introduction" }
    ListItem {
      text "Languages"
      List {
        ListItem(href: "#") { "HTML" }
        ListItem(href: "#") { "Javascript" }
        ListItem(href: "#") { "CSS" }
      }
    }
    ListItem(href: "#") { "Review" }
  }
}

Header { "Link List" }
Wrapper(style: "contain: layout style;") {
  List(link: true) {
    ListItem(active: true) { "Home" }
    ListItem(href: "#") { "About" }
    ListItem(href: "#") { "Jobs" }
    ListItem(href: "#") { "Team" }
  }
}

Header { "Items" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem { "1" }
    ListItem { "2" }
    ListItem { "3" }
  }
}

Header { "Icon" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem(href: "#", icon: "help") {
      ListContent {
        ListHeader { "Floated Icon" }
        ListDescription { "This text will always have a left margin to make sure it sits alongside your icon" }
      }
    }
    ListItem(href: "#", icon: "right triangle") {
      ListContent {
        ListHeader { "Icon Alignment" }
        ListDescription { "Floated icons are by default top aligned. To have an icon top aligned try this example." }
      }
    }
    ListItem(icon: "help") {
      text "Inline Text"
    }
  }
}

Header { "Image" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem {
      Image(src: "/images/avatar2/small/rachel.png", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Rachel" }
        ListDescription { "Last seen watching Arrested Development just now." }
      }
    }
    ListItem {
      Image(src: "/images/avatar2/small/lindsay.png", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Lindsay" }
        ListDescription { "Last seen watching Bob's Burgers 10 hours ago." }
      }
    }
    ListItem {
      Image(src: "/images/avatar2/small/matthew.png", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Matthew" }
        ListDescription { "Last seen watching The Godfather Part 2 yesterday." }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/jenny.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Jenny Hess" }
        ListDescription { "Last seen watching Twin Peaks 3 days ago." }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/veronika.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Veronika Ossi" }
        ListDescription { "Has not watched anything recently" }
      }
    }
  }
}

Header { "Link" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem(href: "#") { "What is a FAQ?" }
    ListItem(href: "#") { "Who is our user?" }
    ListItem(href: "#") { "Where is our office located?" }
  }
}

Header { "Link" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem {
      ListHeader(href: "#") { "Header" }
      ListDescription { "Click a link in our description." }
    }
    ListItem {
      ListHeader(href: "#") { "Learn More" }
      ListDescription { "Learn more about this site on our FAQ page." }
    }
  }
}

Header { "Header" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem {
      ListHeader { "New York City" }
      text "A lovely city"
    }
    ListItem {
      ListHeader { "Chicago" }
      text "Also quite a lovely city"
    }
    ListItem {
      ListHeader { "Los Angeles" }
      text "Sometimes can be a lovely city"
    }
    ListItem {
      ListHeader { "San Francisco" }
      text "What a lovely city"
    }
  }
}

Header { "Description" }
Wrapper(style: "contain: layout style;") {
  List {
    ListItem(icon: "map marker") {
      ListContent {
        ListHeader(href: "#") { "Krolewskie Jadlo" }
        ListDescription { "An excellent polish restaurant, quick delivery and hearty, filling meals." }
      }
    }
    ListItem(icon: "map marker") {
      ListContent {
        ListHeader(href: "#") { "Xian Famous Foods" }
        ListDescription { "A taste of Shaanxi's delicious culinary traditions, with delights like spicy cold noodles and lamb burgers." }
      }
    }
    ListItem(icon: "map marker") {
      ListContent {
        ListHeader(href: "#") { "Sapporo Haru" }
        ListDescription { "Greenpoint's best choice for quick and delicious sushi." }
      }
    }
    ListItem(icon: "map marker") {
      ListContent {
        ListHeader(href: "#") { "Enid's" }
        ListDescription { "At night a bar, during the day a delicious brunch spot." }
      }
    }
  }
}

Header { "Horizontal" }
Wrapper(style: "contain: layout style;") {
  List(horizontal: true) {
    ListItem {
      Image(src: "/images/avatar/small/tom.jpg", class: "avatar")
      ListContent {
        ListHeader { "Tom" }
        text "Top Contributor"
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian Rocha" }
        text "Admin"
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/matt.jpg", class: "avatar")
      ListContent {
        ListHeader { "Matt" }
        text "Top Rated User"
      }
    }
  }
}

Header { "Ordered Horizontal" }
Wrapper(style: "contain: layout style;") {
  List(ordered: true, horizontal: true) {
    ListItem {
      Image(src: "/images/avatar/small/tom.jpg", class: "avatar")
      ListContent {
        ListHeader { "Steve Jobes" }
        text "50 Points"
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/stevie.jpg", class: "avatar")
      ListContent {
        ListHeader { "Stevie Feliciano" }
        text "44 Points"
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/jenny.jpg", class: "avatar")
      ListContent {
        ListHeader { "Jenny Hess" }
        text "11 Points"
      }
    }
  }
}

Header { "Horizontal Bulleted Link List" }
Wrapper(style: "contain: layout style;") {
  List(horizontal: true, bulleted: true, link: true) {
    ListItem(href: "#") { "Terms and Conditions" }
    ListItem(href: "#") { "Privacy Policy" }
    ListItem(href: "#") { "Contact Us" }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    List(inverted: true, relaxed: true, divided: true) {
      ListItem {
        ListContent {
          ListHeader { "Snickerdoodle" }
          text "An excellent companion"
        }
      }
      ListItem {
        ListContent {
          ListHeader { "Poodle" }
          text "A poodle, its pretty basic"
        }
      }
      ListItem {
        ListContent {
          ListHeader { "Paulo" }
          text "He's also a dog"
        }
      }
    }
  }
}

Header { "Selection" }
Wrapper(style: "contain: layout style;") {
  List(selection: true, class: "middle aligned") {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Animated" }
Wrapper(style: "contain: layout style;") {
  List(animated: true, class: "middle aligned") {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Relaxed" }
Wrapper(style: "contain: layout style;") {
  List(relaxed: true) {
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Daniel Louise" }
        ListDescription { "Last seen watching Arrested Development just now." }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/stevie.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Stevie Feliciano" }
        ListDescription { "Last seen watching Bob's Burgers 10 hours ago." }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/elliot.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Elliot Fu" }
        ListDescription { "Last seen watching The Godfather Part 2 yesterday." }
      }
    }
  }
}

Header { "Relaxed Horizontal" }
Wrapper(style: "contain: layout style;") {
  List(relaxed: true, horizontal: true) {
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Daniel Louise" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/stevie.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Stevie Feliciano" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/elliot.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Elliot Fu" }
      }
    }
  }
}

Header { "Very Relaxed" }
Wrapper(style: "contain: layout style;") {
  List(class: "very relaxed") {
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Daniel Louise" }
        ListDescription { "Last seen watching Arrested Development just now." }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/stevie.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Stevie Feliciano" }
        ListDescription { "Last seen watching Bob's Burgers 10 hours ago." }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/elliot.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Elliot Fu" }
        ListDescription { "Last seen watching The Godfather Part 2 yesterday." }
      }
    }
  }
}

Header { "Very Relaxed Horizontal" }
Wrapper(style: "contain: layout style;") {
  List(horizontal: true, class: "very relaxed") {
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Daniel Louise" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/stevie.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Stevie Feliciano" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/elliot.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Elliot Fu" }
      }
    }
  }
}

Header { "Divided" }
Wrapper(style: "contain: layout style;") {
  List(divided: true, class: "middle aligned") {
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Daniel Louise" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/stevie.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Stevie Feliciano" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/elliot.jpg", class: "avatar")
      ListContent {
        ListHeader(href: "#") { "Elliot Fu" }
      }
    }
  }
}

Header { "Celled" }
Wrapper(style: "contain: layout style;") {
  List(celled: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Snickerdoodle" }
        text "An excellent companion"
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Poodle" }
        text "A poodle, its pretty basic"
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Paulo" }
        text "He's also a dog"
      }
    }
  }
}

Header { "Celled Ordered" }
Wrapper(style: "contain: layout style;") {
  List(celled: true, ordered: true) {
    ListItem { "Cats" }
    ListItem { "Horses" }
    ListItem {
      text "Dogs"
      List {
        ListItem { "Labradoodles" }
        ListItem { "Shiba Inu" }
        ListItem { "Mastiff" }
      }
    }
  }
}

Header { "Celled Horizontal" }
Wrapper(style: "contain: layout style;") {
  List(celled: true, horizontal: true) {
    ListItem { "About Us" }
    ListItem { "Contact" }
    ListItem { "Support" }
  }
}

Header { "Mini" }
Wrapper(style: "contain: layout style;") {
  List(size: "mini", horizontal: true, divided: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Tiny" }
Wrapper(style: "contain: layout style;") {
  List(size: "tiny", horizontal: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Small" }
Wrapper(style: "contain: layout style;") {
  List(size: "small", horizontal: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Large" }
Wrapper(style: "contain: layout style;") {
  List(size: "large", horizontal: true, divided: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Big" }
Wrapper(style: "contain: layout style;") {
  List(size: "big", horizontal: true, divided: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Huge" }
Wrapper(style: "contain: layout style;") {
  List(size: "huge", horizontal: true, divided: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Massive" }
Wrapper(style: "contain: layout style;") {
  List(size: "massive", horizontal: true, divided: true) {
    ListItem {
      Image(src: "/images/avatar/small/helen.jpg", class: "avatar")
      ListContent {
        ListHeader { "Helen" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/christian.jpg", class: "avatar")
      ListContent {
        ListHeader { "Christian" }
      }
    }
    ListItem {
      Image(src: "/images/avatar/small/daniel.jpg", class: "avatar")
      ListContent {
        ListHeader { "Daniel" }
      }
    }
  }
}

Header { "Vertically Aligned" }
Wrapper(style: "contain: layout style;") {
  List(horizontal: true) {
    ListItem {
      Image(src: "/images/wireframe/square-image.png", class: "avatar")
      ListContent(aligned: "top") { "Top Aligned" }
    }
    ListItem {
      Image(src: "/images/wireframe/square-image.png", class: "avatar")
      ListContent(aligned: "middle") { "Middle" }
    }
    ListItem {
      Image(src: "/images/wireframe/square-image.png", class: "avatar")
      ListContent(aligned: "bottom") { "Bottom" }
    }
  }
}

Header { "Floated" }
Wrapper(style: "contain: layout style;") {
  List(divided: true, class: "middle aligned") {
    ListItem {
      ListContent(floated: "right") {
        Button { "Add" }
      }
      Image(src: "/images/avatar2/small/lena.png", class: "avatar")
      ListContent { "Lena" }
    }
    ListItem {
      ListContent(floated: "right") {
        Button { "Add" }
      }
      Image(src: "/images/avatar2/small/lindsay.png", class: "avatar")
      ListContent { "Lindsay" }
    }
    ListItem {
      ListContent(floated: "right") {
        Button { "Add" }
      }
      Image(src: "/images/avatar2/small/mark.png", class: "avatar")
      ListContent { "Mark" }
    }
    ListItem {
      ListContent(floated: "right") {
        Button { "Add" }
      }
      Image(src: "/images/avatar2/small/molly.png", class: "avatar")
      ListContent { "Molly" }
    }
  }
}

Header { "Floated" }
Wrapper(style: "contain: layout style;") {
  List(horizontal: true, class: "right floated") {
    ListItem(disabled: true) { "GitHub, Inc." }
    ListItem(href: "#") { "Terms" }
    ListItem(href: "#") { "Privacy" }
    ListItem(href: "#") { "Contact" }
  }
  List(horizontal: true) {
    ListItem(href: "#") { "About Us" }
    ListItem(href: "#") { "Jobs" }
  }
}
