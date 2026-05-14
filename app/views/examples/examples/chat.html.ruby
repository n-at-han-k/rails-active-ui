# Chat App Example — full-page chat layout using rails-active-ui components

text '<style>
  /* Override the example layout to fill the viewport */
  #example-content { padding: 0 !important; overflow: hidden !important; }

  /* Chat layout grid fills the available height */
  .chat-layout { height: calc(100vh - 0px); display: grid; grid-template-columns: 320px 1fr; }
  .chat-sidebar { border-right: 1px solid rgba(34,36,38,.15); display: flex; flex-direction: column; overflow: hidden; }
  .chat-sidebar .chat-search { padding: 0.75em 1em; }
  .chat-sidebar .chat-contacts { flex: 1; overflow-y: auto; }

  /* Contact list items */
  .chat-sidebar .ui.list .item { padding: 0.75em 1em !important; cursor: pointer; }
  .chat-sidebar .ui.list .item:hover { background: rgba(0,0,0,.03); }
  .chat-sidebar .ui.list .item.active { background: rgba(33,133,208,.08); }
  .chat-sidebar .contact-row { display: flex; align-items: center; gap: 0.75em; width: 100%; }
  .chat-sidebar .contact-info { flex: 1; min-width: 0; }
  .chat-sidebar .contact-top { display: flex; justify-content: space-between; align-items: baseline; }
  .chat-sidebar .contact-name { font-weight: 600; }
  .chat-sidebar .contact-time { font-size: 0.78em; color: rgba(0,0,0,.4); white-space: nowrap; }
  .chat-sidebar .contact-preview { font-size: 0.85em; color: rgba(0,0,0,.4); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; margin-top: 2px; display: flex; align-items: center; gap: 4px; }

  /* Conversation panel */
  .chat-main { display: flex; flex-direction: column; overflow: hidden; background: #f7f7f7; }
  .chat-header { background: #fff; border-bottom: 1px solid rgba(34,36,38,.15); padding: 0.65em 1em; display: flex; align-items: center; gap: 0.75em; }
  .chat-header .header-info { flex: 1; }
  .chat-header .header-info .name { font-weight: 600; font-size: 1.05em; }
  .chat-header .header-info .status { font-size: 0.82em; color: rgba(0,0,0,.4); }
  .chat-header .header-actions { display: flex; gap: 0.35em; }

  /* Message area */
  .chat-messages { flex: 1; overflow-y: auto; padding: 1.25em 1em; }
  .chat-messages .ui.comments { max-width: 100% !important; }
  .chat-messages .ui.comments .comment { margin-bottom: 0.6em; }

  /* "Own" messages — right-aligned bubble style */
  .chat-messages .own .comment { direction: rtl; }
  .chat-messages .own .comment .content { direction: ltr; text-align: left; }
  .chat-messages .own .comment .avatar { float: right !important; margin-right: 0 !important; margin-left: 0.5em !important; }
  .chat-messages .own .comment > .content .text { background: #2185d0; color: #fff; display: inline-block; padding: 0.55em 0.85em; border-radius: 1em 1em 0.2em 1em; max-width: 75%; }
  .chat-messages .comment:not(.own) > .content .text { background: #fff; display: inline-block; padding: 0.55em 0.85em; border-radius: 1em 1em 1em 0.2em; max-width: 75%; box-shadow: 0 1px 2px rgba(0,0,0,.08); }

  /* Compose bar */
  .chat-compose { background: #fff; border-top: 1px solid rgba(34,36,38,.15); padding: 0.65em 1em; }
  .chat-compose .ui.form .fields { margin-bottom: 0; }
  .chat-compose .compose-row { display: flex; align-items: center; gap: 0.4em; }
  .chat-compose .compose-row .ui.input { flex: 1; }

  /* Online indicator dot */
  .online-dot { width: 9px; height: 9px; border-radius: 50%; display: inline-block; margin-right: 4px; vertical-align: middle; }
  .online-dot.green { background: #21ba45; }
  .online-dot.yellow { background: #fbbd08; }
  .online-dot.grey { background: #999; }

  /* Unread badge */
  .unread-badge { background: #21ba45 !important; color: #fff !important; min-width: 1.6em; text-align: center; }
</style>'.html_safe

Wrapper(class: "chat-layout") {

  # ── Left Sidebar: Contact List ──────────────────────────────────────
  Wrapper(class: "chat-sidebar") {

    # Sidebar header
    Wrapper(style: "padding: 0.85em 1em; border-bottom: 1px solid rgba(34,36,38,.15); display: flex; align-items: center; justify-content: space-between;") {
      Header(size: :h3, style: "margin: 0;") { "Chats" }
      Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "tiny blue icon") {
        Icon(name: "plus")
        MenuMenu(class: "menu") {
          MenuItem(icon: "comment alternate") { "New Chat" }
          MenuItem(icon: "users") { "Create Group" }
          Divider()
          MenuItem(icon: "address book") { "Add Contact" }
        }
      }
    }

    # Search
    Wrapper(class: "chat-search") {
      Input(icon: "search", icon_position: "left", placeholder: "Search conversations...", fluid: true, size: "small")
    }

    # Contact list
    Wrapper(class: "chat-contacts") {
      List(divided: true, relaxed: true, selection: true) {

        # Contact 1 — active
        ListItem(class: "active") {
          Wrapper(class: "contact-row") {
            Image(src: "/images/soho/avatars/1.png", avatar: true)
            Wrapper(class: "contact-info") {
              Wrapper(class: "contact-top") {
                Wrapper(class: "contact-name") { text "Jenny Hess" }
                Wrapper(class: "contact-time") { text "2:45 PM" }
              }
              Wrapper(class: "contact-preview") {
                Icon(name: "check", color: "blue", size: "small")
                text "Sounds great! See you then"
              }
            }
          }
        }

        # Contact 2
        ListItem {
          Wrapper(class: "contact-row") {
            Image(src: "/images/soho/avatars/2.png", avatar: true)
            Wrapper(class: "contact-info") {
              Wrapper(class: "contact-top") {
                Wrapper(class: "contact-name") { text "Elliot Fu" }
                Wrapper(class: "contact-time") { text "1:20 PM" }
              }
              Wrapper(class: "contact-preview") {
                text "I've pushed the latest changes to the repo"
              }
            }
            Tag(circular: true, size: "mini", class: "unread-badge") { "3" }
          }
        }

        # Contact 3
        ListItem {
          Wrapper(class: "contact-row") {
            Image(src: "/images/soho/avatars/4.png", avatar: true)
            Wrapper(class: "contact-info") {
              Wrapper(class: "contact-top") {
                Wrapper(class: "contact-name") { text "Stevie Feliciano" }
                Wrapper(class: "contact-time") { text "Yesterday" }
              }
              Wrapper(class: "contact-preview") {
                text "Can you review the design mockups?"
              }
            }
          }
        }

        # Contact 4
        ListItem {
          Wrapper(class: "contact-row") {
            Image(src: "/images/soho/avatars/5.png", avatar: true)
            Wrapper(class: "contact-info") {
              Wrapper(class: "contact-top") {
                Wrapper(class: "contact-name") { text "Matt" }
                Wrapper(class: "contact-time") { text "Yesterday" }
              }
              Wrapper(class: "contact-preview") {
                Icon(name: "image", size: "small")
                text "Sent a photo"
              }
            }
            Tag(circular: true, size: "mini", class: "unread-badge") { "1" }
          }
        }

        # Contact 5
        ListItem {
          Wrapper(class: "contact-row") {
            Image(src: "/images/soho/avatars/6.png", avatar: true)
            Wrapper(class: "contact-info") {
              Wrapper(class: "contact-top") {
                Wrapper(class: "contact-name") { text "Joe Henderson" }
                Wrapper(class: "contact-time") { text "Mon" }
              }
              Wrapper(class: "contact-preview") {
                text "The presentation is ready for Friday"
              }
            }
          }
        }

        # Contact 6
        ListItem {
          Wrapper(class: "contact-row") {
            Image(src: "/images/soho/avatars/7.png", avatar: true)
            Wrapper(class: "contact-info") {
              Wrapper(class: "contact-top") {
                Wrapper(class: "contact-name") { text "Christian Rocha" }
                Wrapper(class: "contact-time") { text "Sun" }
              }
              Wrapper(class: "contact-preview") {
                text "Thanks for the help!"
              }
            }
          }
        }

      }
    }
  }

  # ── Right Panel: Active Conversation ────────────────────────────────
  Wrapper(class: "chat-main") {

    # Chat header
    Wrapper(class: "chat-header") {
      Image(src: "/images/soho/avatars/1.png", avatar: true)
      Wrapper(class: "header-info") {
        Wrapper(class: "name") {
          text "Jenny Hess"
        }
        Wrapper(class: "status") {
          text '<span class="online-dot green"></span>'.html_safe
          text "Online"
        }
      }
      Wrapper(class: "header-actions") {
        Popup(content: "Voice call") {
          Button(icon: "phone", class: "circular basic icon")
        }
        Popup(content: "Video call") {
          Button(icon: "video", class: "circular basic icon")
        }
        Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic circular") {
          Icon(name: "ellipsis vertical")
          MenuMenu(class: "menu") {
            MenuItem(icon: "user") { "View Profile" }
            MenuItem(icon: "archive") { "Archive Chat" }
            MenuItem(icon: "bell slash") { "Mute Notifications" }
            Divider()
            MenuItem(icon: "trash", class: "red") { "Delete Chat" }
          }
        }
      }
    }

    # Message area
    Wrapper(class: "chat-messages") {
      CommentGroup(minimal: true) {

        # Date divider
        Divider(horizontal: true) {
          Text(size: "xs", color: "grey") { "Today" }
        }

        # Message from Jenny
        Comment { |c|
          c.avatar { Image(src: "/images/soho/avatars/1.png") }
          c.author { "Jenny Hess" }
          c.metadata { "9:15 AM" }
          c.text_slot { "Hey! Are you free for lunch today?" }
        }

        # Own message (right-aligned)
        Wrapper(class: "own") {
          Comment { |c|
            c.avatar { Image(src: "/images/soho/avatars/6.png") }
            c.author { "You" }
            c.metadata {
              text "9:18 AM "
              Icon(name: "check circle", color: "blue", size: "small")
            }
            c.text_slot { "Sure! What time works for you?" }
          }
        }

        # Message from Jenny
        Comment { |c|
          c.avatar { Image(src: "/images/soho/avatars/1.png") }
          c.author { "Jenny Hess" }
          c.metadata { "9:20 AM" }
          c.text_slot { "How about 12:30? There's a new place on 5th Ave I've been wanting to try." }
        }

        # Own message
        Wrapper(class: "own") {
          Comment { |c|
            c.avatar { Image(src: "/images/soho/avatars/6.png") }
            c.author { "You" }
            c.metadata {
              text "9:22 AM "
              Icon(name: "check circle", color: "blue", size: "small")
            }
            c.text_slot { "12:30 works. What's the place called?" }
          }
        }

        # Message from Jenny
        Comment { |c|
          c.avatar { Image(src: "/images/soho/avatars/1.png") }
          c.author { "Jenny Hess" }
          c.metadata { "9:25 AM" }
          c.text_slot { "It's called 'The Garden Table' -- they have great salads and sandwiches. I'll send you the location." }
        }

        # Message from Jenny — file attachment
        Comment { |c|
          c.avatar { Image(src: "/images/soho/avatars/1.png") }
          c.author { "Jenny Hess" }
          c.metadata { "9:26 AM" }
          c.text_slot {
            Segment(compact: true, style: "display: inline-block;") {
              HStack(spacing: 3, align: "center") {
                Icon(name: "map marker alternate", size: "large", color: "red")
                Wrapper {
                  Text(weight: "semibold", size: "sm") { "The Garden Table" }
                  Text(size: "xs", color: "grey") { "127 5th Ave, New York" }
                }
              }
            }
          }
        }

        # Own message
        Wrapper(class: "own") {
          Comment { |c|
            c.avatar { Image(src: "/images/soho/avatars/6.png") }
            c.author { "You" }
            c.metadata {
              text "9:28 AM "
              Icon(name: "check circle", color: "blue", size: "small")
            }
            c.text_slot { "That looks great! I'll meet you there." }
          }
        }

        # Message from Jenny
        Comment { |c|
          c.avatar { Image(src: "/images/soho/avatars/1.png") }
          c.author { "Jenny Hess" }
          c.metadata { "9:30 AM" }
          c.text_slot { "Awesome! I'll grab us a table early. See you at 12:30!" }
        }

        # Own message — most recent, with delivery status
        Wrapper(class: "own") {
          Comment { |c|
            c.avatar { Image(src: "/images/soho/avatars/6.png") }
            c.author { "You" }
            c.metadata {
              text "2:45 PM "
              Icon(name: "check", color: "grey", size: "small")
            }
            c.text_slot { "Sounds great! See you then" }
          }
        }

      }
    }

    # Compose bar
    Wrapper(class: "chat-compose") {
      Wrapper(class: "compose-row") {
        Popup(content: "Emoji") {
          Button(icon: "smile outline", class: "icon basic circular")
        }
        Popup(content: "Attach file") {
          Button(icon: "paperclip", class: "icon basic circular")
        }
        Input(placeholder: "Type a message...", fluid: true, action: true) {
          Button(color: "blue", icon: "paper plane") { "Send" }
        }
        Popup(content: "Voice message") {
          Button(icon: "microphone", class: "icon basic circular")
        }
      }
    }
  }
}

# ── User Profile Flyout ──────────────────────────────────────────────
Flyout(direction: "right") { |c|
  c.header { "Jenny Hess" }
  c.content {
    Wrapper(style: "text-align: center; margin-bottom: 1.5em;") {
      Image(src: "/images/soho/avatars/1.png", circular: true, centered: true, size: "small")
      Header(size: :h3, style: "margin-top: 0.75em; margin-bottom: 0.25em;") { "Jenny Hess" }
      Text(size: "sm", color: "grey") {
        text '<span class="online-dot green"></span>'.html_safe
        text "Online"
      }
    }

    Header(size: :h5, dividing: true) { "About" }
    Text(size: "sm") { "Designer & photographer. Coffee enthusiast. Making the world more beautiful, one pixel at a time." }

    Header(size: :h5, dividing: true, style: "margin-top: 1.25em;") { "Details" }
    List(divided: true, relaxed: true) {
      ListItem(icon: "phone") {
        ListContent {
          ListHeader { "Phone" }
          ListDescription { "+1 (555) 234-5678" }
        }
      }
      ListItem(icon: "mail") {
        ListContent {
          ListHeader { "Email" }
          ListDescription { "jenny.hess@example.com" }
        }
      }
      ListItem(icon: "map marker alternate") {
        ListContent {
          ListHeader { "Location" }
          ListDescription { "New York, NY" }
        }
      }
    }

    Header(size: :h5, dividing: true, style: "margin-top: 1.25em;") { "Shared Media" }
    Wrapper(style: "display: flex; gap: 6px; flex-wrap: wrap;") {
      Image(src: "/images/soho/images/image1.jpg", rounded: true, style: "width: 70px; height: 70px; object-fit: cover;")
      Image(src: "/images/soho/images/image2.jpg", rounded: true, style: "width: 70px; height: 70px; object-fit: cover;")
      Image(src: "/images/soho/images/image3.jpg", rounded: true, style: "width: 70px; height: 70px; object-fit: cover;")
    }
  }
  c.actions {
    Button(color: "red", icon: "ban") { " Block User" }
    Button(class: "cancel") { "Close" }
  }
}
