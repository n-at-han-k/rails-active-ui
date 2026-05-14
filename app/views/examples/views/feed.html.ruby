Header { "Feed" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      e.summary {
        LinkTo(class: "user") { "Elliot Fu" }
        NbSpace()
        Text { "added you as a friend" }
      }
      e.date_inline { "1 Hour Ago" }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "4 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/helen.jpg") }
      e.summary {
        LinkTo { "Helen Troy" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "2 new illustrations" }
      }
      e.date_inline { "4 days ago" }
      e.extra_images {
        LinkTo { Image(src: "/images/wireframe/image.png") }
        LinkTo { Image(src: "/images/wireframe/image.png") }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "1 Like" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/jenny.jpg") }
      e.summary {
        LinkTo(class: "user") { "Jenny Hess" }
        NbSpace()
        Text { "added you as a friend" }
      }
      e.date_inline { "2 Days Ago" }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "8 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/joe.jpg") }
      e.summary {
        LinkTo { "Joe Henderson" }
        NbSpace()
        Text { "posted on his page" }
      }
      e.date_inline { "3 days ago" }
      e.extra_text { "Ours is a life of constant reruns. We're always circling back to where we'd we started, then starting all over again. Even if we don't run extra laps that day, we surely will come back for more of the same another day soon." }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "5 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/justen.jpg") }
      e.summary {
        LinkTo { "Justen Kitsune" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "2 new photos" }
        NbSpace()
        Text { "of you" }
      }
      e.date_inline { "4 days ago" }
      e.extra_images {
        LinkTo { Image(src: "/images/wireframe/image.png") }
        LinkTo { Image(src: "/images/wireframe/image.png") }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "41 Likes" }
        }
      }
    }
  }
}

Header { "Label" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      Text { "You added Elliot Fu to the group" }
      NbSpace()
      LinkTo { "Coworkers" }
    }
  }
}

Header { "Label with Icon" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Icon(name: "pencil") }
      e.summary {
        Text { "You posted on your friend" }
        NbSpace()
        LinkTo { "Stevie Feliciano's" }
        NbSpace()
        Text { "wall." }
      }
      e.date_inline { "Today" }
    }
  }
}

Header { "Label with Text" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Text(color: "purple") { "NEW" } }
      Text { "Check the latest sales offers" }
    }
    FeedItem { |e|
      e.label { Text(color: "purple", class: "multiline") { "THIS FALL" } }
      Text { "Only in selected theaters!" }
    }
  }
}

Header { "Label with Label Component" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Tag(color: "green", size: "small") { "OK" } }
      Text { "Deployment was successful" }
    }
  }
}

Header { "Label with data-text" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Wrapper(class: "label", data: { text: "Run" }) { "" } }
      Text { "Run, Forrest, run!" }
    }
    FeedItem { |e|
      e.label { Wrapper(class: "red label", data: { text: "Stop" }) { "" } }
      Text { "Don't move!" }
    }
    FeedItem { |e|
      e.label { Wrapper(class: "yellow basic label", data: { text: "Zzz" }) { "" } }
      Text { "Nap time" }
    }
  }
}

Header { "Date" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/jenny.jpg") }
      e.date { "3 days ago" }
      e.summary {
        Text { "You added" }
        NbSpace()
        LinkTo { "Jenny Hess" }
        NbSpace()
        Text { "to your" }
        NbSpace()
        LinkTo { "coworker" }
        NbSpace()
        Text { "group." }
      }
    }
  }
}

Header { "Date Inline" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/jenny.jpg") }
      e.summary {
        Text { "You added" }
        NbSpace()
        LinkTo { "Jenny Hess" }
        NbSpace()
        Text { "to your" }
        NbSpace()
        LinkTo { "coworker" }
        NbSpace()
        Text { "group." }
      }
      e.date_inline { "3 days ago" }
    }
  }
}

Header { "Additional Information" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/helen.jpg") }
      e.date { "3 days ago" }
      e.summary {
        LinkTo { "Helen Troy" }
        NbSpace()
        Text { "added 2 photos" }
      }
      e.extra_images {
        LinkTo { Image(src: "/images/wireframe/image.png") }
        LinkTo { Image(src: "/images/wireframe/image.png") }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/laura.jpg") }
      e.date { Wrapper(class: "right floated date") { "3 days ago" } }
      e.summary {
        LinkTo { "Laura Faucet" }
        NbSpace()
        Text { "created a post" }
      }
      e.extra_text { "Have you seen what's going on in Israel? Can you believe it." }
    }
  }
}

Header { "Disabled" }
Wrapper(style: "contain: layout style;") {
  Feed {
    FeedItem(disabled: true) { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      e.summary {
        LinkTo(class: "user") { "I am a disabled feed event" }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "4 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      e.summary {
        LinkTo(class: "user") { "I am a normal feed event" }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "4 Likes" }
        }
      }
    }
  }
}

Header { "Disabled Feed" }
Wrapper(style: "contain: layout style;") {
  Feed(disabled: true) {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      e.summary {
        LinkTo(class: "user") { "I am a feed event of a whole disabled feed" }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "4 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      e.summary {
        LinkTo(class: "user") { "Me too" }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "4 Likes" }
        }
      }
    }
  }
}

Header { "Connected" }
Wrapper(style: "contain: layout style;") {
  Feed(connected: true) {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      e.summary {
        LinkTo(class: "user") { "Elliot Fu" }
        NbSpace()
        Text { "added you as a friend" }
      }
      e.date_inline { "1 Hour Ago" }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "4 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Icon(name: "pencil") }
      e.summary { "You submitted a new post to the page" }
      e.date_inline { "3 days ago" }
      e.extra_text { "I'm having a BBQ this weekend. Come by around 4pm if you can." }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "11 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/helen.jpg") }
      e.date { "4 days ago" }
      e.summary {
        LinkTo { "Helen Troy" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "2 new illustrations" }
      }
      e.extra_images {
        LinkTo { Image(src: "/images/wireframe/image.png") }
        LinkTo { Image(src: "/images/wireframe/image.png") }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "1 Like" }
        }
      }
    }
  }
}

Header { "Ordered" }
Wrapper(style: "contain: layout style;") {
  Feed(color: "orange", ordered: true, connected: true) {
    FeedItem { |e|
      e.label { Wrapper(class: "blue label") { "" } }
      e.summary { "Different Labels color than whole feed color" }
    }
    FeedItem(color: "black") { |e|
      e.label { Wrapper(class: "label") { "" } }
      e.summary { "Automatic label content, line color taken from event color" }
    }
    FeedItem { |e|
      e.label { Wrapper(class: "label", data: { text: "3rd" }) { "" } }
      e.summary { "Content via data-text attribute" }
    }
    FeedItem { |e|
      e.label { Wrapper(class: "basic label") { "" } }
      e.summary { "Basic Label" }
    }
  }
}

Header { "Divided" }
Wrapper(style: "contain: layout style;") {
  Feed(divided: true) {
    FeedItem { |e|
      e.summary {
        LinkTo { "Elliot Fu" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "Jenny Hess" }
        NbSpace()
        Text { "as a friend" }
      }
    }
    FeedItem { |e|
      e.summary {
        LinkTo { "Stevie Feliciano" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "Elliot Fu" }
        NbSpace()
        Text { "as a friend" }
      }
    }
    FeedItem { |e|
      e.summary {
        LinkTo { "Helen Troy" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "Christian Rocha" }
        NbSpace()
        Text { "as a friend" }
      }
    }
    FeedItem { |e|
      e.summary {
        LinkTo { "Christian Rocha" }
        NbSpace()
        Text { "signed up for the site." }
      }
    }
  }
}

Header { "Small" }
Wrapper(style: "contain: layout style;") {
  Feed(size: "small") {
    Header(size: :h4) { "Followers Activity" }
    FeedItem { |e|
      e.summary {
        LinkTo { "Elliot Fu" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "Jenny Hess" }
        NbSpace()
        Text { "as a friend" }
      }
    }
    FeedItem { |e|
      e.summary {
        LinkTo { "Stevie Feliciano" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "Elliot Fu" }
        NbSpace()
        Text { "as a friend" }
      }
    }
    FeedItem { |e|
      e.summary {
        LinkTo { "Helen Troy" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "Christian Rocha" }
        NbSpace()
        Text { "as a friend" }
      }
    }
    FeedItem { |e|
      e.summary {
        LinkTo { "Christian Rocha" }
        NbSpace()
        Text { "signed up for the site." }
      }
    }
  }
}

Header { "Large" }
Wrapper(style: "contain: layout style;") {
  Feed(size: "large") {
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/elliot.jpg") }
      e.summary {
        LinkTo(class: "user") { "Elliot Fu" }
        NbSpace()
        Text { "added you as a friend" }
      }
      e.date_inline { "1 Hour Ago" }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "4 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Icon(name: "pencil") }
      e.summary { "You submitted a new post to the page" }
      e.date_inline { "3 days ago" }
      e.extra_text { "I'm having a BBQ this weekend. Come by around 4pm if you can." }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "11 Likes" }
        }
      }
    }
    FeedItem { |e|
      e.label { Image(src: "/images/avatar/small/helen.jpg") }
      e.date { "4 days ago" }
      e.summary {
        LinkTo { "Helen Troy" }
        NbSpace()
        Text { "added" }
        NbSpace()
        LinkTo { "2 new illustrations" }
      }
      e.extra_images {
        LinkTo { Image(src: "/images/wireframe/image.png") }
        LinkTo { Image(src: "/images/wireframe/image.png") }
      }
      e.meta {
        LinkTo(class: "like") {
          Icon(name: "like")
          NbSpace()
          Text { "1 Like" }
        }
      }
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Feed(inverted: true) {
      FeedItem { |e|
        e.label { Image(src: "/images/avatar/small/elliot.jpg") }
        e.date { "Just now" }
        e.summary {
          LinkTo(class: "user") { "Elliot Fu" }
          NbSpace()
          Text { "posted on his page" }
        }
        e.extra_text { "Hey there !" }
      }
      FeedItem { |e|
        e.label { Image(src: "/images/avatar/small/elliot.jpg") }
        e.summary {
          LinkTo(class: "user") { "Elliot Fu" }
          NbSpace()
          Text { "added you as a friend" }
        }
        e.date_inline { "1 Hour Ago" }
      }
      FeedItem { |e|
        e.label { Image(src: "/images/avatar/small/helen.jpg") }
        e.summary {
          LinkTo { "Helen Troy" }
          NbSpace()
          Text { "added" }
          NbSpace()
          LinkTo { "2 new illustrations" }
        }
        e.date_inline { "4 days ago" }
        e.extra_images {
          LinkTo { Image(src: "/images/wireframe/image.png") }
          LinkTo { Image(src: "/images/wireframe/image.png") }
        }
        e.meta {
          LinkTo(class: "like") {
            Icon(name: "like")
            NbSpace()
            Text { "1 Like" }
          }
        }
      }
      FeedItem { |e|
        e.label { Image(src: "/images/avatar/small/jenny.jpg") }
        e.summary {
          LinkTo(class: "user") { "Jenny Hess" }
          NbSpace()
          Text { "added you as a friend" }
        }
        e.date_inline { "2 Days Ago" }
        e.meta {
          LinkTo(class: "like") {
            Icon(name: "like")
            NbSpace()
            Text { "8 Likes" }
          }
        }
      }
      FeedItem { |e|
        e.label { Image(src: "/images/avatar/small/joe.jpg") }
        e.summary {
          LinkTo { "Joe Henderson" }
          NbSpace()
          Text { "posted on his page" }
        }
        e.date_inline { "3 days ago" }
        e.extra_text { "Ours is a life of constant reruns. We're always circling back to where we'd we started, then starting all over again. Even if we don't run extra laps that day, we surely will come back for more of the same another day soon." }
        e.meta {
          LinkTo(class: "like") {
            Icon(name: "like")
            NbSpace()
            Text { "5 Likes" }
          }
        }
      }
      FeedItem { |e|
        e.label { Image(src: "/images/avatar/small/justen.jpg") }
        e.summary {
          LinkTo { "Justen Kitsune" }
          NbSpace()
          Text { "added" }
          NbSpace()
          LinkTo { "2 new photos" }
          NbSpace()
          Text { "of you" }
        }
        e.date_inline { "4 days ago" }
        e.extra_images {
          LinkTo { Image(src: "/images/wireframe/image.png") }
          LinkTo { Image(src: "/images/wireframe/image.png") }
        }
        e.meta {
          LinkTo(class: "like") {
            Icon(name: "like")
            NbSpace()
            Text { "41 Likes" }
          }
        }
      }
    }
  }
}
