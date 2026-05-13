Header { "Comments" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Header(size: :h3, dividing: true) { "Comments" }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/matt.jpg") }
      c.author { "Matt" }
      c.metadata { "Today at 5:42PM" }
      c.text_slot { "How artistic!" }
      c.actions { "Reply" }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
      c.author { "Elliot Fu" }
      c.metadata { "Yesterday at 12:30AM" }
      c.text_slot { "This has been very useful for my research. Thanks as well!" }
      c.actions { "Reply" }
      CommentReplyGroup {
        CommentReply { |c|
          c.avatar { Image(src: "/images/avatar/small/jenny.jpg") }
          c.author { "Jenny Hess" }
          c.metadata { "Just now" }
          c.text_slot { "Elliot you are always so right :)" }
          c.actions { "Reply" }
        }
      }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/joe.jpg") }
      c.author { "Joe Henderson" }
      c.metadata { "5 days ago" }
      c.text_slot { "Dude, this is awesome. Thanks so much" }
      c.actions { "Reply" }
    }
    Form(class: "reply") {
      Wrapper(class: "field") { "" }
      Button(color: "blue", class: "labeled submit icon") {
        Icon(name: "edit")
        text " Add Reply"
      }
    }
  }
}

Header { "Avatar" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
      c.author { "Elliot Fu" }
    }
  }
}

Header { "Metadata" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/stevie.jpg") }
      c.author { "Stevie Feliciano" }
      c.metadata {
        text "2 days ago "
        Icon(name: "star")
        text " 5 Faves"
      }
      c.text_slot { "Hey guys, I hope this example comment is helping you read this documentation." }
    }
  }
}

Header { "Actions" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/joe.jpg") }
      c.author { "Tom Lukic" }
      c.text_slot { "This will be great for business reports. I will definitely download this." }
      c.actions {
        text "Reply Save Hide "
        Icon(name: "expand")
        text " Full-screen"
      }
    }
  }
}

Header { "Reply Form" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/steve.jpg") }
      c.author { "Steve Jobes" }
      c.metadata { "2 days ago" }
      c.text_slot { "Revolutionary!" }
      c.actions { "Reply" }
      Form(class: "reply") {
        Wrapper(class: "field") { "" }
        Button(color: "primary", class: "submit labeled icon") {
          Icon(name: "edit")
          text " Add Reply"
        }
      }
    }
  }
}

Header { "Reply Form" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/joe.jpg") }
      c.author { "Joe Henderson" }
      c.metadata { "1 day ago" }
      c.text_slot {
        Paragraph { "The hours, minutes and seconds stand as visible reminders that your effort put them all there." }
        Paragraph { "Preserve until your next run, when the watch lets you see how Impermanent your efforts are." }
      }
      c.actions { "Reply" }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/christian.jpg") }
      c.author { "Christian Rocha" }
      c.metadata { "2 days ago" }
      c.text_slot { "I re-tweeted this." }
      c.actions { "Reply" }
    }
    Form(class: "reply") {
      Wrapper(class: "field") { "" }
      Button(color: "primary", class: "submit labeled icon") {
        Icon(name: "edit")
        text " Add Comment"
      }
    }
  }
}

Header { "Collapsed" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/christian.jpg") }
      c.author { "Christian Rocha" }
      c.metadata { "2 days ago" }
      c.text_slot { "I'm very interested in this motherboard. Do you know if it'd work in a Intel LGA775 CPU socket?" }
      c.actions { "Reply" }
      CommentReplyGroup(collapsed: true) {
        CommentReply { |c|
          c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
          c.author { "Elliot Fu" }
          c.metadata { "1 day ago" }
          c.text_slot { "No, it wont" }
          c.actions { "Reply" }
          CommentReplyGroup {
            CommentReply { |c|
              c.avatar { Image(src: "/images/avatar/small/jenny.jpg") }
              c.author { "Jenny Hess" }
              c.metadata { "20 minutes ago" }
              c.text_slot { "Maybe it would." }
              c.actions { "Reply" }
            }
          }
        }
      }
    }
  }
}

Header { "Disabled" }
Wrapper(style: "contain: layout style;") {
  CommentGroup {
    Comment(disabled: true) { |c|
      c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
      c.author { "Elliot Fu" }
      c.metadata { "1 day ago" }
      c.text_slot { "No, it wont" }
      c.actions { "Reply" }
    }
  }
}

Header { "Threaded" }
Wrapper(style: "contain: layout style;") {
  CommentGroup(threaded: true) {
    Header(size: :h3, dividing: true) { "Comments" }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/matt.jpg") }
      c.author { "Matt" }
      c.metadata { "Today at 5:42PM" }
      c.text_slot { "How artistic!" }
      c.actions { "Reply" }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
      c.author { "Elliot Fu" }
      c.metadata { "Yesterday at 12:30AM" }
      c.text_slot { "This has been very useful for my research. Thanks as well!" }
      c.actions { "Reply" }
      CommentReplyGroup {
        CommentReply { |c|
          c.avatar { Image(src: "/images/avatar/small/jenny.jpg") }
          c.author { "Jenny Hess" }
          c.metadata { "Just now" }
          c.text_slot { "Elliot you are always so right :)" }
          c.actions { "Reply" }
        }
      }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/joe.jpg") }
      c.author { "Joe Henderson" }
      c.metadata { "5 days ago" }
      c.text_slot { "Dude, this is awesome. Thanks so much" }
      c.actions { "Reply" }
    }
    Form(class: "reply") {
      Wrapper(class: "field") { "" }
      Button(color: "blue", class: "labeled submit icon") {
        Icon(name: "edit")
        text " Add Reply"
      }
    }
  }
}

Header { "Minimal" }
Wrapper(style: "contain: layout style;") {
  CommentGroup(minimal: true) {
    Header(size: :h3, dividing: true) { "Comments" }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/matt.jpg") }
      c.author { "Matt" }
      c.metadata { "Today at 5:42PM" }
      c.text_slot { "How artistic!" }
      c.actions { "Reply" }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
      c.author { "Elliot Fu" }
      c.metadata { "Yesterday at 12:30AM" }
      c.text_slot { "This has been very useful for my research. Thanks as well!" }
      c.actions { "Reply" }
      CommentReplyGroup {
        CommentReply { |c|
          c.avatar { Image(src: "/images/avatar/small/jenny.jpg") }
          c.author { "Jenny Hess" }
          c.metadata { "Just now" }
          c.text_slot { "Elliot you are always so right :)" }
          c.actions { "Reply" }
        }
      }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/joe.jpg") }
      c.author { "Joe Henderson" }
      c.metadata { "5 days ago" }
      c.text_slot { "Dude, this is awesome. Thanks so much" }
      c.actions { "Reply" }
    }
    Form(class: "reply") {
      Wrapper(class: "field") { "" }
      Button(color: "blue", class: "labeled submit icon") {
        Icon(name: "edit")
        text " Add Reply"
      }
    }
  }
}

Header { "Small" }
Wrapper(style: "contain: layout style;") {
  CommentGroup(size: "small") {
    Header(size: :h3, dividing: true) { "Comments" }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/matt.jpg") }
      c.author { "Matt" }
      c.metadata { "Today at 5:42PM" }
      c.text_slot { "How artistic!" }
      c.actions { "Reply" }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
      c.author { "Elliot Fu" }
      c.metadata { "Yesterday at 12:30AM" }
      c.text_slot { "This has been very useful for my research. Thanks as well!" }
      c.actions { "Reply" }
      CommentReplyGroup {
        CommentReply { |c|
          c.avatar { Image(src: "/images/avatar/small/jenny.jpg") }
          c.author { "Jenny Hess" }
          c.metadata { "Just now" }
          c.text_slot { "Elliot you are always so right :)" }
          c.actions { "Reply" }
        }
      }
    }
    Comment { |c|
      c.avatar { Image(src: "/images/avatar/small/joe.jpg") }
      c.author { "Joe Henderson" }
      c.metadata { "5 days ago" }
      c.text_slot { "Dude, this is awesome. Thanks so much" }
      c.actions { "Reply" }
    }
    Form(class: "reply") {
      Wrapper(class: "field") { "" }
      Button(color: "blue", class: "labeled submit icon") {
        Icon(name: "edit")
        text " Add Reply"
      }
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    CommentGroup(inverted: true, threaded: true) {
      Header(size: :h3, inverted: true, dividing: true) { "Comments" }
      Comment { |c|
        c.avatar { Image(src: "/images/avatar/small/matt.jpg") }
        c.author { "Matt" }
        c.metadata { "Today at 5:42PM" }
        c.text_slot { "How artistic!" }
        c.actions { "Reply" }
      }
      Comment { |c|
        c.avatar { Image(src: "/images/avatar/small/elliot.jpg") }
        c.author { "Elliot Fu" }
        c.metadata { "Yesterday at 12:30AM" }
        c.text_slot { "This has been very useful for my research. Thanks as well!" }
        c.actions { "Reply" }
        CommentReplyGroup {
          CommentReply { |c|
            c.avatar { Image(src: "/images/avatar/small/jenny.jpg") }
            c.author { "Jenny Hess" }
            c.metadata { "Just now" }
            c.text_slot { "Elliot you are always so right :)" }
            c.actions { "Reply" }
          }
        }
      }
      Comment { |c|
        c.avatar { Image(src: "/images/avatar/small/joe.jpg") }
        c.author { "Joe Henderson" }
        c.metadata { "5 days ago" }
        c.text_slot { "Dude, this is awesome. Thanks so much" }
        c.actions { "Reply" }
      }
      Form(class: "reply") {
        Wrapper(class: "field") { "" }
        Button(color: "blue", class: "labeled submit icon") {
          Icon(name: "edit")
          text " Add Reply"
        }
      }
    }
  }
}
