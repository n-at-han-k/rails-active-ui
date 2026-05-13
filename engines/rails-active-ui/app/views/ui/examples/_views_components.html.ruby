# ------------------------------------------------------------------
# Ad
# ------------------------------------------------------------------
Header(size: :h3) { text "Ad" }
text "An advertisement placeholder with standard ad unit sizes."

Segment {
  Ad(unit: "banner", test: "Banner Ad")
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Ad(unit: "banner", test: "Banner Ad")'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Card
# ------------------------------------------------------------------
Header(size: :h3) { text "Card" }
text "A card displays content with image, header, description, and extra sections."

Segment {
  HStack(spacing: 16) {
    Card { |c|
      c.image {
        Image(src: "https://fomantic-ui.com/images/avatar/large/elliot.jpg", fluid: true)
      }
      c.header { text "Elliot Fu" }
      c.meta { text "Friend" }
      c.description { text "Elliot is a sound engineer living in Nashville who enjoys playing guitar." }
      c.extra {
        Icon(name: "user")
        text "22 Friends"
      }
    }

    Card(raised: true, color: :blue) { |c|
      c.header { text "Project Alpha" }
      c.meta { text "Started Jan 2025" }
      c.description { text "A revolutionary new approach to distributed computing." }
      c.extra {
        HStack(spacing: 8) {
          Label(color: :blue, size: :mini) { text "Active" }
          Label(basic: true, size: :mini) { text "v2.1" }
        }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Card { |c|
  c.image {
    Image(src: "https://fomantic-ui.com/images/avatar/large/elliot.jpg", fluid: true)
  }
  c.header { text "Elliot Fu" }
  c.meta { text "Friend" }
  c.description { text "Elliot is a sound engineer living in Nashville." }
  c.extra {
    Icon(name: "user")
    text "22 Friends"
  }
}

Card(raised: true, color: :blue) { |c|
  c.header { text "Project Alpha" }
  c.meta { text "Started Jan 2025" }
  c.description { text "A revolutionary new approach to distributed computing." }
  c.extra {
    Label(color: :blue, size: :mini) { text "Active" }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Comment
# ------------------------------------------------------------------
Header(size: :h3) { text "Comment" }
text "A comment displays user-generated content with avatar, author, and actions."

Segment {
  concat tag.div(class: "ui comments") {
    capture {
      Comment { |c|
        c.avatar {
          Image(src: "https://fomantic-ui.com/images/avatar/small/matt.jpg")
        }
        c.author { text "Matt" }
        c.metadata { text "Today at 5:42PM" }
        c.text_slot { text "How artistic!" }
        c.actions {
          concat tag.a(class: "reply", href: "#") { "Reply" }
        }
      }

      Comment { |c|
        c.avatar {
          Image(src: "https://fomantic-ui.com/images/avatar/small/elliot.jpg")
        }
        c.author { text "Elliot Fu" }
        c.metadata { text "Yesterday at 12:30AM" }
        c.text_slot { text "This has been very useful for my research. Thanks!" }
        c.actions {
          concat tag.a(class: "reply", href: "#") { "Reply" }
        }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Comment { |c|
  c.avatar {
    Image(src: "https://fomantic-ui.com/images/avatar/small/matt.jpg")
  }
  c.author { text "Matt" }
  c.metadata { text "Today at 5:42PM" }
  c.text_slot { text "How artistic!" }
  c.actions {
    concat tag.a(class: "reply", href: "#") { "Reply" }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Feed
# ------------------------------------------------------------------
Header(size: :h3) { text "Feed" }
text "A feed displays a timeline of user activity events."

Segment {
  Feed(size: :large) {
    concat tag.div(class: "event") {
      safe_join([
        tag.div(class: "label") {
          tag.img(src: "https://fomantic-ui.com/images/avatar/small/elliot.jpg")
        },
        tag.div(class: "content") {
          safe_join([
            tag.div(class: "summary") {
              safe_join([
                tag.a("Elliot Fu", href: "#"),
                " added you as a friend",
                tag.div(class: "date") { "1 Hour Ago" }
              ])
            }
          ])
        }
      ])
    }
    concat tag.div(class: "event") {
      safe_join([
        tag.div(class: "label") {
          tag.i(class: "pencil icon")
        },
        tag.div(class: "content") {
          safe_join([
            tag.div(class: "summary") { "You submitted a new post" },
            tag.div(class: "extra text") { "My first blog post about components!" }
          ])
        }
      ])
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Feed(size: :large) {
  concat tag.div(class: "event") {
    safe_join([
      tag.div(class: "label") {
        tag.img(src: ".../avatar/small/elliot.jpg")
      },
      tag.div(class: "content") {
        tag.div(class: "summary") {
          safe_join([tag.a("Elliot Fu", href: "#"), " added you as a friend"])
        }
      }
    ])
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Item / ItemGroup
# ------------------------------------------------------------------
Header(size: :h3) { text "Item / ItemGroup" }
text "Items present related content with image, header, description, and metadata."

Segment {
  ItemGroup(divided: true, relaxed: true) {
    Item { |c|
      c.image {
        Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: :tiny)
      }
      c.header { text "Project Report" }
      c.meta { text "Last updated 3 days ago" }
      c.description { text "A detailed quarterly report for the engineering team." }
      c.extra {
        Label(color: :green, size: :mini) { text "Published" }
      }
    }

    Item { |c|
      c.image {
        Image(src: "https://fomantic-ui.com/images/wireframe/image.png", size: :tiny)
      }
      c.header { text "Design System" }
      c.meta { text "Created 1 week ago" }
      c.description { text "Component library documentation and usage guidelines." }
      c.extra {
        Label(color: :blue, size: :mini) { text "Draft" }
      }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'ItemGroup(divided: true, relaxed: true) {
  Item { |c|
    c.image {
      Image(src: ".../wireframe/image.png", size: :tiny)
    }
    c.header { text "Project Report" }
    c.meta { text "Last updated 3 days ago" }
    c.description { text "A detailed quarterly report." }
    c.extra {
      Label(color: :green, size: :mini) { text "Published" }
    }
  }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Statistic
# ------------------------------------------------------------------
Header(size: :h3) { text "Statistic" }
text "A statistic displays a value with a label."

Segment {
  HStack(spacing: 24) {
    Statistic { |c|
      c.value { text "5,550" }
      c.label { text "Downloads" }
    }

    Statistic(color: :blue) { |c|
      c.value {
        Icon(name: "world")
        text "22"
      }
      c.label { text "Countries" }
    }

    Statistic(horizontal: true, color: :green) { |c|
      c.value { text "89%" }
      c.label { text "Uptime" }
    }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Statistic { |c|
  c.value { text "5,550" }
  c.label { text "Downloads" }
}

Statistic(color: :blue) { |c|
  c.value {
    Icon(name: "world")
    text "22"
  }
  c.label { text "Countries" }
}

Statistic(horizontal: true, color: :green) { |c|
  c.value { text "89%" }
  c.label { text "Uptime" }
}'
  )}
}
