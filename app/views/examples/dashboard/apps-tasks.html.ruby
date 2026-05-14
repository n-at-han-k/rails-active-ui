# Shadcn UI Kit Dashboard — Tasks
# Translated from https://github.com/bundui/shadcn-ui-kit-dashboard

text '<style>
  /* Override example layout */
  #example-content { padding: 0 !important; overflow: hidden !important; }

  /* Dashboard layout */
  .dash-layout { display: grid; grid-template-columns: 260px 1fr; height: 100vh; overflow: hidden; }
  .dash-sidebar { background: #1b1c1d; overflow-y: auto; display: flex; flex-direction: column; }
  .dash-main { display: flex; flex-direction: column; overflow: hidden; }

  /* Header */
  .dash-header { background: rgba(255,255,255,0.85); backdrop-filter: blur(8px); border-bottom: 1px solid rgba(34,36,38,.12); padding: 0.6em 1.25em; display: flex; align-items: center; gap: 0.75em; z-index: 10; flex-shrink: 0; }
  .dash-header .header-right { margin-left: auto; display: flex; align-items: center; gap: 0.35em; }
  .dash-header .ui.input { min-width: 220px; }

  /* Content area */
  .dash-content { flex: 1; overflow-y: auto; padding: 1.25em; background: rgba(0,0,0,.02); }

  /* Title bar */
  .dash-title-bar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.25em; flex-wrap: wrap; gap: 0.75em; }

  /* Widget grid */
  .dash-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 1em; }
  .dash-grid .span-2 { grid-column: span 2; }

  /* Sidebar nav */
  .dash-sidebar .sidebar-header { padding: 1em 1.25em; display: flex; align-items: center; gap: 0.6em; border-bottom: 1px solid rgba(255,255,255,.08); }
  .dash-sidebar .sidebar-header img { width: 28px; height: 28px; border-radius: 6px; }
  .dash-sidebar .sidebar-header .app-name { color: #fff; font-weight: 600; font-size: 0.95em; }
  .dash-sidebar .nav-section { padding: 0.5em 0; border-bottom: 1px solid rgba(255,255,255,.06); }
  .dash-sidebar .nav-section-title { color: rgba(255,255,255,.35); font-size: 0.72em; text-transform: uppercase; letter-spacing: 0.12em; padding: 0.75em 1.25em 0.35em; font-weight: 600; }
  .dash-sidebar .nav-item { display: flex; align-items: center; gap: 0.6em; padding: 0.45em 1.25em; color: rgba(255,255,255,.6); font-size: 0.88em; cursor: pointer; text-decoration: none; transition: background 0.15s; }
  .dash-sidebar .nav-item:hover { background: rgba(255,255,255,.06); color: rgba(255,255,255,.85); }
  .dash-sidebar .nav-item.active { background: rgba(255,255,255,.1); color: #fff; font-weight: 500; }
  .dash-sidebar .nav-item .nav-badge { margin-left: auto; background: rgba(255,255,255,.15); color: rgba(255,255,255,.7); font-size: 0.75em; padding: 0.1em 0.5em; border-radius: 10px; }
  .dash-sidebar .nav-item .nav-badge.new { background: rgba(33,186,69,.2); color: #21ba45; }

  /* Sidebar footer */
  .sidebar-footer { margin-top: auto; padding: 1em; }
  .sidebar-promo { background: rgba(255,255,255,.06); border-radius: 0.5em; padding: 1em; margin-bottom: 0.75em; }
  .sidebar-promo .promo-title { color: #fff; font-weight: 600; font-size: 0.9em; margin-bottom: 0.25em; }
  .sidebar-promo .promo-desc { color: rgba(255,255,255,.45); font-size: 0.78em; margin-bottom: 0.75em; line-height: 1.4; }
  .sidebar-user { display: flex; align-items: center; gap: 0.6em; padding: 0.5em 0.25em; }
  .sidebar-user img { width: 32px; height: 32px; border-radius: 50%; }
  .sidebar-user .user-info { flex: 1; min-width: 0; }
  .sidebar-user .user-name { color: #fff; font-size: 0.85em; font-weight: 500; }
  .sidebar-user .user-email { color: rgba(255,255,255,.4); font-size: 0.72em; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }

</style>'.html_safe

Wrapper(class: "dash-layout") {

  # ── Sidebar ─────────────────────────────────────────────────────────
  Wrapper(class: "dash-sidebar") {

    # Sidebar header
    Wrapper(class: "sidebar-header") {
      Image(src: "/images/shadcn-dashboard/logo.png")
      Wrapper(class: "app-name") { text "Shadcn UI Kit" }
    }

    # Dashboards section
    Wrapper(class: "nav-section") {
      Wrapper(class: "nav-section-title") { "Dashboards" }
      Wrapper(class: "nav-item") { Icon(name: "chart pie", inverted: true); LinkTo(href: "/examples/dashboard/default", style: "color: inherit; text-decoration: none;") { "Classic Dashboard" } }
      Wrapper(class: "nav-item") { Icon(name: "shopping bag", inverted: true); LinkTo(href: "/examples/dashboard/ecommerce", style: "color: inherit; text-decoration: none;") { "E-commerce" } }
      Wrapper(class: "nav-item") { Icon(name: "credit card", inverted: true); LinkTo(href: "/examples/dashboard/payment", style: "color: inherit; text-decoration: none;") { "Payment" } }
      Wrapper(class: "nav-item") { Icon(name: "building", inverted: true); LinkTo(href: "/examples/dashboard/hotel", style: "color: inherit; text-decoration: none;") { "Hotel" } }
      Wrapper(class: "nav-item") { Icon(name: "folder", inverted: true); LinkTo(href: "/examples/dashboard/project-management", style: "color: inherit; text-decoration: none;") { "Project Management" } }
      Wrapper(class: "nav-item") { Icon(name: "home", inverted: true); LinkTo(href: "/examples/dashboard/real-estate", style: "color: inherit; text-decoration: none;") { "Real Estate" } }
      Wrapper(class: "nav-item") { Icon(name: "dollar sign", inverted: true); LinkTo(href: "/examples/dashboard/sales", style: "color: inherit; text-decoration: none;") { "Sales" } }
      Wrapper(class: "nav-item") { Icon(name: "address book", inverted: true); LinkTo(href: "/examples/dashboard/crm", style: "color: inherit; text-decoration: none;") { "CRM" } }
      Wrapper(class: "nav-item") { Icon(name: "chart bar", inverted: true); LinkTo(href: "/examples/dashboard/website-analytics", style: "color: inherit; text-decoration: none;") { "Website Analytics" } }
      Wrapper(class: "nav-item") { Icon(name: "folder open", inverted: true); LinkTo(href: "/examples/dashboard/file-manager", style: "color: inherit; text-decoration: none;") { "File Manager" } }
      Wrapper(class: "nav-item") { Icon(name: "bitcoin", inverted: true); LinkTo(href: "/examples/dashboard/crypto", style: "color: inherit; text-decoration: none;") { "Crypto" } }
      Wrapper(class: "nav-item") { Icon(name: "graduation cap", inverted: true); LinkTo(href: "/examples/dashboard/academy", style: "color: inherit; text-decoration: none;") { "Academy" } }
      Wrapper(class: "nav-item") { Icon(name: "heartbeat", inverted: true); LinkTo(href: "/examples/dashboard/hospital-management", style: "color: inherit; text-decoration: none;") { "Hospital" } }
      Wrapper(class: "nav-item") { Icon(name: "chart line", inverted: true); LinkTo(href: "/examples/dashboard/finance", style: "color: inherit; text-decoration: none;") { "Finance" } }
    }

    # Apps section
    Wrapper(class: "nav-section") {
      Wrapper(class: "nav-section-title") { "Apps" }
      Wrapper(class: "nav-item") { Icon(name: "columns", inverted: true); LinkTo(href: "/examples/dashboard/apps-kanban", style: "color: inherit; text-decoration: none;") { "Kanban" } }
      Wrapper(class: "nav-item") { Icon(name: "sticky note", inverted: true); LinkTo(href: "/examples/dashboard/apps-notes", style: "color: inherit; text-decoration: none;") { "Notes" }; Wrapper(class: "nav-badge") { "8" } }
      Wrapper(class: "nav-item") { Icon(name: "comment", inverted: true); LinkTo(href: "/examples/dashboard/apps-chat", style: "color: inherit; text-decoration: none;") { "Chats" }; Wrapper(class: "nav-badge") { "5" } }
      Wrapper(class: "nav-item") { Icon(name: "heart", inverted: true); LinkTo(href: "/examples/dashboard/apps-social-media", style: "color: inherit; text-decoration: none;") { "Social Media" }; Wrapper(class: "nav-badge new") { "New" } }
      Wrapper(class: "nav-item") { Icon(name: "mail", inverted: true); LinkTo(href: "/examples/dashboard/apps-mail", style: "color: inherit; text-decoration: none;") { "Mail" } }
      Wrapper(class: "nav-item") { Icon(name: "check square", inverted: true); LinkTo(href: "/examples/dashboard/apps-todo", style: "color: inherit; text-decoration: none;") { "Todo List" } }
      Wrapper(class: "nav-item active") { Icon(name: "clipboard", inverted: true); LinkTo(href: "/examples/dashboard/apps-tasks", style: "color: inherit; text-decoration: none;") { "Tasks" } }
      Wrapper(class: "nav-item") { Icon(name: "calendar", inverted: true); LinkTo(href: "/examples/dashboard/apps-calendar", style: "color: inherit; text-decoration: none;") { "Calendar" } }
    }

    # AI Apps section
    Wrapper(class: "nav-section") {
      Wrapper(class: "nav-section-title") { "AI Apps" }
      Wrapper(class: "nav-item") { Icon(name: "brain", inverted: true); LinkTo(href: "/examples/dashboard/apps-ai-chat", style: "color: inherit; text-decoration: none;") { "AI Chat" } }
      Wrapper(class: "nav-item") { Icon(name: "microchip", inverted: true); LinkTo(href: "/examples/dashboard/apps-ai-chat-v2", style: "color: inherit; text-decoration: none;") { "AI Chat V2" }; Wrapper(class: "nav-badge new") { "New" } }
      Wrapper(class: "nav-item") { Icon(name: "images", inverted: true); LinkTo(href: "/examples/dashboard/apps-ai-image-generator", style: "color: inherit; text-decoration: none;") { "Image Generator" } }
      Wrapper(class: "nav-item") { Icon(name: "volume up", inverted: true); LinkTo(href: "/examples/dashboard/apps-text-to-speech", style: "color: inherit; text-decoration: none;") { "Text to Speech" } }
    }

    # Sidebar footer
    Wrapper(class: "sidebar-footer") {
      Wrapper(class: "sidebar-promo") {
        Wrapper(class: "promo-title") { "Unlock Everything" }
        Wrapper(class: "promo-desc") { "Get full access to all dashboard templates and components." }
        Button(color: "green", size: "tiny", fluid: true) {
          Icon(name: "circle", size: "tiny")
          text " Get Full Access"
        }
      }
      Wrapper(class: "sidebar-user") {
        Image(src: "/images/shadcn-dashboard/avatars/1.jpg", circular: true)
        Wrapper(class: "user-info") {
          Wrapper(class: "user-name") { "Toby Belhome" }
          Wrapper(class: "user-email") { "hello@tobybelhome.com" }
        }
        Icon(name: "ellipsis vertical", inverted: true, link: true)
      }
    }
  }

  # ── Main Content ────────────────────────────────────────────────────
  Wrapper(class: "dash-main") {

    # Header
    Wrapper(class: "dash-header") {
      Popup(content: "Toggle sidebar") {
        Button(icon: "bars", class: "basic icon")
      }
      Divider(vertical: true)
      Input(icon: "search", icon_position: "left", placeholder: "Search...", size: "small")

      Wrapper(class: "header-right") {
        # Notifications
        Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic circular mini") {
          Icon(name: "bell")
          MenuMenu(class: "menu") {
            MenuItem(header: true) { "Notifications" }
            Divider()
            MenuItem {
              HStack(spacing: 3, align: "center") {
                Image(src: "/images/shadcn-dashboard/avatars/2.jpg", avatar: true)
                Wrapper {
                  Text(weight: "semibold", size: "sm") { "Jackson Lee" }
                  Text(size: "xs", color: "grey") { "Sent you a message" }
                }
              }
            }
            MenuItem {
              HStack(spacing: 3, align: "center") {
                Image(src: "/images/shadcn-dashboard/avatars/3.jpg", avatar: true)
                Wrapper {
                  Text(weight: "semibold", size: "sm") { "Hally Gray" }
                  Text(size: "xs", color: "grey") { "Invited you to a project" }
                }
              }
            }
            MenuItem {
              HStack(spacing: 3, align: "center") {
                Image(src: "/images/shadcn-dashboard/avatars/4.jpg", avatar: true)
                Wrapper {
                  Text(weight: "semibold", size: "sm") { "Sofia Davis" }
                  Text(size: "xs", color: "grey") { "Commented on your task" }
                }
              }
            }
            Divider()
            MenuItem(href: "#") { text "View all notifications" }
          }
        }

        # Theme toggle
        Popup(content: "Toggle theme") {
          Button(icon: "moon", class: "basic icon circular mini")
        }

        Divider(vertical: true)

        # User menu
        Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic circular mini") {
          Image(src: "/images/shadcn-dashboard/avatars/1.jpg", avatar: true, style: "width: 28px; height: 28px;")
          MenuMenu(class: "menu") {
            MenuItem(header: true) {
              Text(weight: "semibold") { "Toby Belhome" }
              Text(size: "xs", color: "grey") { "hello@tobybelhome.com" }
            }
            Divider()
            MenuItem(icon: "user") { "Account" }
            MenuItem(icon: "credit card") { "Billing" }
            MenuItem(icon: "bell") { "Notifications" }
            Divider()
            MenuItem(icon: "sign-out") { "Log out" }
          }
        }
      }
    }

    # Content area
    Wrapper(class: "dash-content") {

      # Title bar
      Wrapper(class: "dash-title-bar") {
        Header(size: :h2, style: "margin: 0;") { "Tasks" }
        Wrapper(style: "display: flex; gap: 0.5em; align-items: center;") {
          Button(class: "basic", icon: "calendar alternate outline") { " 17 Apr 2026 - 14 May 2026" }
          Button(color: "blue", icon: "download") { " Download" }
        }
      }

      # Widget grid
      Wrapper(class: "dash-grid") {

        # ── Tasks Data Table (full width) ─────────────────────────────
        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header {
              HStack(spacing: 3, justify: "between", align: "center") {
                Header(size: :h4, style: "margin: 0;") { "Tasks" }
                HStack(spacing: 3) {
                  Input(icon: "search", icon_position: "left", placeholder: "Filter tasks...", size: "mini")
                  Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "basic mini") {
                    Icon(name: "sliders horizontal")
                    text " Status"
                    MenuMenu(class: "menu") {
                      MenuItem { Icon(name: "circle outline"); text "Backlog" }
                      MenuItem { Icon(name: "circle"); text "Todo" }
                      MenuItem { Icon(name: "clock"); text "In Progress" }
                      MenuItem { Icon(name: "check circle"); text "Done" }
                      MenuItem { Icon(name: "ban"); text "Canceled" }
                    }
                  }
                  Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "basic mini") {
                    Icon(name: "sliders horizontal")
                    text " Priority"
                    MenuMenu(class: "menu") {
                      MenuItem { Icon(name: "arrow down"); text "Low" }
                      MenuItem { Icon(name: "arrow right"); text "Medium" }
                      MenuItem { Icon(name: "arrow up"); text "High" }
                    }
                  }
                  Button(color: "blue", size: "mini", icon: "plus") { " Add Task" }
                }
              }
            }
            c.description {
              Table(basic: "very", size: "small", selectable: true) { |t|
                t.header {
                  TableRow {
                    TableCell(heading: true, width: 2) { "Task" }
                    TableCell(heading: true, width: 5) { "Title" }
                    TableCell(heading: true, width: 3) { "Status" }
                    TableCell(heading: true, width: 3) { "Priority" }
                    TableCell(heading: true, width: 1) { "" }
                  }
                }
                [
                  ["TASK-8782", "bug",         "You can't compress the program without quantifying...",    "in progress", "clock",          "blue",   "medium", "arrow right"],
                  ["TASK-7878", "feature",     "Try to calculate the EXE feed, maybe it will index...",   "backlog",     "circle outline", "grey",   "high",   "arrow up"],
                  ["TASK-7839", "feature",     "We need to bypass the neural TCP card!",                  "todo",        "circle",         "grey",   "high",   "arrow up"],
                  ["TASK-5562", "bug",         "The SAS interface is down, bypass the open-source...",    "backlog",     "circle outline", "grey",   "medium", "arrow right"],
                  ["TASK-8686", "feature",     "I'll parse the wireless SSL protocol, that should...",    "canceled",    "ban",            "red",    "medium", "arrow right"],
                  ["TASK-1280", "bug",         "Use the digital TLS panel, then you can transmit...",     "done",        "check circle",   "green",  "high",   "arrow up"],
                  ["TASK-7262", "feature",     "The UTF8 application is down, parse the neural...",       "done",        "check circle",   "green",  "low",    "arrow down"],
                  ["TASK-1138", "feature",     "Generating the driver won't do anything, we need to...",  "in progress", "clock",          "blue",   "medium", "arrow right"],
                  ["TASK-7184", "bug",         "We need to program the back-end THX pixel!",              "todo",        "circle",         "grey",   "low",    "arrow down"],
                  ["TASK-5765", "documentation","The SQL firewall is down, navigate the primary...",      "done",        "check circle",   "green",  "medium", "arrow right"],
                ].each do |id, label, title, status, status_icon, status_color, priority, priority_icon|
                  TableRow {
                    TableCell { Text(size: "sm", color: "grey") { id } }
                    TableCell {
                      HStack(spacing: 3, align: "center") {
                        Tag(size: "mini", basic: true) { label }
                        Text(weight: "semibold", size: "sm") { title }
                      }
                    }
                    TableCell {
                      HStack(spacing: 2, align: "center") {
                        Icon(name: status_icon, color: status_color, size: "small")
                        Text(size: "sm") { status.split(" ").map(&:capitalize).join(" ") }
                      }
                    }
                    TableCell {
                      HStack(spacing: 2, align: "center") {
                        Icon(name: priority_icon, size: "small")
                        Text(size: "sm") { priority.capitalize }
                      }
                    }
                    TableCell {
                      Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                        Icon(name: "ellipsis horizontal")
                        MenuMenu(class: "menu") {
                          MenuItem(icon: "edit") { "Edit" }
                          MenuItem(icon: "copy") { "Make a copy" }
                          MenuItem(icon: "star") { "Favorite" }
                          Divider()
                          MenuItem(icon: "trash", class: "red") { "Delete" }
                        }
                      }
                    }
                  }
                end
              }

              HStack(spacing: 3, justify: "between", align: "center", style: "margin-top: 0.75em;") {
                Text(size: "xs", color: "grey") { "0 of 10 row(s) selected" }
                HStack(spacing: 3, align: "center") {
                  Text(size: "xs") { "Rows per page" }
                  Dropdown(selection: true, compact: true, default_value: "10", class: "mini") {
                    MenuItem(value: "10") { "10" }
                    MenuItem(value: "20") { "20" }
                    MenuItem(value: "30") { "30" }
                    MenuItem(value: "50") { "50" }
                  }
                  Text(size: "xs") { "Page 1 of 5" }
                  Button(icon: "angle double left", class: "basic icon mini", disabled: true)
                  Button(icon: "chevron left", class: "basic icon mini", disabled: true)
                  Button(icon: "chevron right", class: "basic icon mini")
                  Button(icon: "angle double right", class: "basic icon mini")
                }
              }
            }
          }
        }

      }
    }
  }
}
