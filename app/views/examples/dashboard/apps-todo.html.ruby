# Shadcn UI Kit Dashboard — Todo List
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
      Wrapper(class: "nav-item active") { Icon(name: "check square", inverted: true); LinkTo(href: "/examples/dashboard/apps-todo", style: "color: inherit; text-decoration: none;") { "Todo List" } }
      Wrapper(class: "nav-item") { Icon(name: "clipboard", inverted: true); LinkTo(href: "/examples/dashboard/apps-tasks", style: "color: inherit; text-decoration: none;") { "Tasks" } }
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
        Header(size: :h2, style: "margin: 0;") { "Todo List" }
        Wrapper(style: "display: flex; gap: 0.5em; align-items: center;") {
          Button(class: "basic", icon: "calendar alternate outline") { " 17 Apr 2026 - 14 May 2026" }
          Button(color: "blue", icon: "download") { " Download" }
        }
      }

      # Widget grid
      Wrapper(class: "dash-grid") {

        # ── Todo List (full width) ────────────────────────────────────
        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header {
              HStack(spacing: 3, justify: "between", align: "center") {
                # Status tabs
                HStack(spacing: 3) {
                  Button(color: "blue", size: "mini") { "All" }
                  Button(class: "basic mini") { "Pending" }
                  Button(class: "basic mini") { "In Progress" }
                  Button(class: "basic mini") { "Completed" }
                }
                HStack(spacing: 3) {
                  Input(icon: "search", icon_position: "left", placeholder: "Search todos...", size: "mini")
                  Button(color: "blue", size: "mini", icon: "plus") { " Add Todo" }
                }
              }
            }
            c.description {
              List(divided: true, relaxed: true) {
                [
                  [false, "Design the new landing page",        "high",   "in-progress", "1", "May 20", true],
                  [false, "Fix authentication bug",             "high",   "pending",     "2", "May 18", false],
                  [true,  "Write API documentation",            "medium", "completed",   "3", "May 15", true],
                  [false, "Set up CI/CD pipeline",              "medium", "in-progress", "4", "May 22", false],
                  [true,  "Create user onboarding flow",        "low",    "completed",   "1", "May 12", true],
                  [false, "Implement search functionality",     "high",   "pending",     "2", "May 25", false],
                  [false, "Database performance optimization",  "medium", "in-progress", "3", "Jun 1",  false],
                  [true,  "Set up monitoring and alerting",     "low",    "completed",   "4", "May 10", false],
                  [false, "Mobile responsive fixes",            "high",   "pending",     "1", "May 19", true],
                  [false, "Write end-to-end tests",             "medium", "pending",     "2", "May 28", false],
                ].each do |done, title, priority, status, av, due, starred|
                  ListItem {
                    HStack(spacing: 3, justify: "between", align: "center") {
                      HStack(spacing: 3, align: "center") {
                        Icon(name: done ? "check square" : "square outline", color: done ? "green" : "grey", size: "large", link: true)
                        Wrapper {
                          Text(weight: "semibold", size: "sm", style: done ? "text-decoration: line-through; opacity: 0.5;" : "") { title }
                          HStack(spacing: 3, style: "margin-top: 0.25em;") {
                            Tag(size: "mini", color: status == "completed" ? "green" : status == "in-progress" ? "blue" : "grey", basic: true) { status.split("-").map(&:capitalize).join(" ") }
                            Tag(size: "mini", color: priority == "high" ? "red" : priority == "medium" ? "yellow" : "grey", basic: true) { priority.capitalize }
                          }
                        }
                      }
                      HStack(spacing: 3, align: "center") {
                        Image(src: "/images/shadcn-dashboard/avatars/#{av}.jpg", avatar: true, style: "width: 22px; height: 22px;")
                        Icon(name: "calendar outline", color: "grey", size: "small")
                        Text(size: "xs", color: "grey") { due }
                        Icon(name: starred ? "star" : "star outline", color: starred ? "yellow" : "grey", link: true)
                      }
                    }
                  }
                end
              }
            }
          }
        }

        # Side panel
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Summary" } }
          c.description {
            List(divided: true, relaxed: true) {
              [["Pending", 4, "grey"], ["In Progress", 3, "blue"], ["Completed", 3, "green"]].each do |label, count, color|
                ListItem {
                  HStack(spacing: 3, justify: "between", align: "center") {
                    HStack(spacing: 3, align: "center") { Icon(name: "circle", color: color, size: "tiny"); Text(size: "sm") { label } }
                    Tag(circular: true, size: "mini") { count.to_s }
                  }
                }
              end
            }
            Divider()
            Text(size: "sm", color: "grey") { "Overall Progress" }
            Progress(value: 30, total: 100, color: "blue", indicating: true) { |p| p.bar {}; p.label { "30% done" } }
          }
        }

      }
    }
  }
}
