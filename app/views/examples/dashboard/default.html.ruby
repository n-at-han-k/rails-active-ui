# Shadcn UI Kit Dashboard — Default Dashboard Example
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

  /* KPI stat cards */
  .kpi-value { font-size: 1.85em; font-weight: 700; line-height: 1.2; margin: 0.15em 0 0.1em; }
  .kpi-change { font-size: 0.82em; }
  .kpi-change.positive { color: #21ba45; }
  .kpi-chart-placeholder { height: 80px; background: linear-gradient(135deg, rgba(33,133,208,.06) 0%, rgba(33,133,208,.02) 100%); border-radius: 0.35em; margin-top: 0.75em; display: flex; align-items: flex-end; justify-content: center; gap: 6px; padding: 0 12px 8px; overflow: hidden; }

  /* Mini bar chart */
  .mini-bar { background: #2185d0; border-radius: 3px 3px 0 0; width: 100%; max-width: 28px; transition: height 0.3s; }

  /* Mini line chart placeholder */
  .mini-line-placeholder { height: 80px; background: linear-gradient(135deg, rgba(33,133,208,.06) 0%, rgba(33,133,208,.02) 100%); border-radius: 0.35em; margin-top: 0.75em; position: relative; overflow: hidden; }
  .mini-line-placeholder::after { content: ""; position: absolute; bottom: 20px; left: 10px; right: 10px; height: 2px; background: linear-gradient(90deg, #2185d0 0%, #2185d0 30%, transparent 30%, transparent 35%, #2185d0 35%, #2185d0 65%, transparent 65%, transparent 70%, #2185d0 70%); border-radius: 1px; }

  /* Chat bubbles in widget */
  .chat-bubble { padding: 0.55em 0.85em; border-radius: 1em; max-width: 80%; font-size: 0.88em; margin-bottom: 0.5em; line-height: 1.4; }
  .chat-bubble.agent { background: rgba(0,0,0,.05); align-self: flex-start; border-radius: 1em 1em 1em 0.2em; }
  .chat-bubble.user { background: #2185d0; color: #fff; align-self: flex-end; border-radius: 1em 1em 0.2em 1em; }
  .chat-messages-widget { display: flex; flex-direction: column; gap: 0.35em; margin-bottom: 0.75em; }

  /* Exercise chart placeholder */
  .exercise-chart { height: 180px; background: linear-gradient(135deg, rgba(33,133,208,.04) 0%, rgba(33,133,208,.01) 100%); border-radius: 0.35em; position: relative; overflow: hidden; }
  .exercise-chart::before { content: ""; position: absolute; bottom: 40px; left: 20px; right: 20px; height: 2px; background: rgba(33,133,208,.15); border-radius: 1px; }
  .exercise-chart::after { content: ""; position: absolute; bottom: 55px; left: 20px; right: 20px; height: 2px; background: #2185d0; border-radius: 1px; }

  /* Payment type selector */
  .payment-types { display: grid; grid-template-columns: repeat(3, 1fr); gap: 0.5em; margin-bottom: 1em; }
  .payment-type { border: 2px solid rgba(34,36,38,.15); border-radius: 0.5em; padding: 0.75em; text-align: center; cursor: pointer; font-size: 0.85em; font-weight: 500; transition: border-color 0.15s; }
  .payment-type:first-child { border-color: #2185d0; }
  .payment-type i.icon { font-size: 1.3em; display: block; margin-bottom: 0.3em; }
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
      Wrapper(class: "nav-item active") { Icon(name: "chart pie", inverted: true); LinkTo(href: "/examples/dashboard/default", style: "color: inherit; text-decoration: none;") { "Classic Dashboard" } }
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
      Wrapper(class: "nav-item") { Icon(name: "columns", inverted: true); text "Kanban" }
      Wrapper(class: "nav-item") { Icon(name: "sticky note", inverted: true); text "Notes"; Wrapper(class: "nav-badge") { "8" } }
      Wrapper(class: "nav-item") { Icon(name: "comment", inverted: true); text "Chats"; Wrapper(class: "nav-badge") { "5" } }
      Wrapper(class: "nav-item") { Icon(name: "heart", inverted: true); text "Social Media"; Wrapper(class: "nav-badge new") { "New" } }
      Wrapper(class: "nav-item") { Icon(name: "mail", inverted: true); text "Mail" }
      Wrapper(class: "nav-item") { Icon(name: "check square", inverted: true); text "Todo List" }
      Wrapper(class: "nav-item") { Icon(name: "clipboard", inverted: true); text "Tasks" }
      Wrapper(class: "nav-item") { Icon(name: "calendar", inverted: true); text "Calendar" }
    }

    # AI Apps section
    Wrapper(class: "nav-section") {
      Wrapper(class: "nav-section-title") { "AI Apps" }
      Wrapper(class: "nav-item") { Icon(name: "brain", inverted: true); text "AI Chat" }
      Wrapper(class: "nav-item") { Icon(name: "microchip", inverted: true); text "AI Chat V2"; Wrapper(class: "nav-badge new") { "New" } }
      Wrapper(class: "nav-item") { Icon(name: "images", inverted: true); text "Image Generator" }
      Wrapper(class: "nav-item") { Icon(name: "volume up", inverted: true); text "Text to Speech" }
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
        Header(size: :h2, style: "margin: 0;") { "Dashboard" }
        Wrapper(style: "display: flex; gap: 0.5em; align-items: center;") {
          Button(class: "basic", icon: "calendar alternate outline") { " 17 Apr 2026 - 14 May 2026" }
          Button(color: "blue", icon: "download") { " Download" }
        }
      }

      # Widget grid
      Wrapper(class: "dash-grid") {

        # ── Row 1: Team Members | Subscriptions | Total Revenue ─────

        # Team Members Card
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Team Members" } }
          c.meta { "Invite your team members to collaborate." }
          c.description {
            List(divided: true, relaxed: true) {
              ListItem {
                HStack(spacing: 3, justify: "between", align: "center") {
                  HStack(spacing: 3, align: "center") {
                    Image(src: "/images/shadcn-dashboard/avatars/1.jpg", avatar: true)
                    Wrapper {
                      Text(weight: "semibold", size: "sm") { "Toby Belhome" }
                      Text(size: "xs", color: "grey") { "contact@bundui.io" }
                    }
                  }
                  Dropdown(selection: true, compact: true, default_value: "viewer", class: "mini") {
                    MenuItem(value: "viewer") { "Viewer" }
                    MenuItem(value: "developer") { "Developer" }
                    MenuItem(value: "billing") { "Billing" }
                    MenuItem(value: "owner") { "Owner" }
                  }
                }
              }
              ListItem {
                HStack(spacing: 3, justify: "between", align: "center") {
                  HStack(spacing: 3, align: "center") {
                    Image(src: "/images/shadcn-dashboard/avatars/2.jpg", avatar: true)
                    Wrapper {
                      Text(weight: "semibold", size: "sm") { "Jackson Lee" }
                      Text(size: "xs", color: "grey") { "pre@example.com" }
                    }
                  }
                  Dropdown(selection: true, compact: true, default_value: "developer", class: "mini") {
                    MenuItem(value: "viewer") { "Viewer" }
                    MenuItem(value: "developer") { "Developer" }
                    MenuItem(value: "billing") { "Billing" }
                    MenuItem(value: "owner") { "Owner" }
                  }
                }
              }
              ListItem {
                HStack(spacing: 3, justify: "between", align: "center") {
                  HStack(spacing: 3, align: "center") {
                    Image(src: "/images/shadcn-dashboard/avatars/3.jpg", avatar: true)
                    Wrapper {
                      Text(weight: "semibold", size: "sm") { "Hally Gray" }
                      Text(size: "xs", color: "grey") { "hally@site.com" }
                    }
                  }
                  Dropdown(selection: true, compact: true, default_value: "viewer", class: "mini") {
                    MenuItem(value: "viewer") { "Viewer" }
                    MenuItem(value: "developer") { "Developer" }
                    MenuItem(value: "billing") { "Billing" }
                    MenuItem(value: "owner") { "Owner" }
                  }
                }
              }
            }
          }
        }

        # Subscriptions Card
        Card(fluid: true) { |c|
          c.header { Header(size: :h5, style: "margin: 0; color: rgba(0,0,0,.5); font-weight: 500;") { "Subscriptions" } }
          c.description {
            Wrapper(class: "kpi-value") { "+4,850" }
            Wrapper(class: "kpi-change positive") {
              Icon(name: "arrow up", size: "small")
              text "+180.1% from last month"
            }
            Wrapper(class: "kpi-chart-placeholder") {
              text '<div class="mini-bar" style="height:50%"></div>'.html_safe
              text '<div class="mini-bar" style="height:63%"></div>'.html_safe
              text '<div class="mini-bar" style="height:42%"></div>'.html_safe
              text '<div class="mini-bar" style="height:58%"></div>'.html_safe
              text '<div class="mini-bar" style="height:39%"></div>'.html_safe
              text '<div class="mini-bar" style="height:50%"></div>'.html_safe
              text '<div class="mini-bar" style="height:58%"></div>'.html_safe
              text '<div class="mini-bar" style="height:39%"></div>'.html_safe
            }
          }
        }

        # Total Revenue Card
        Card(fluid: true) { |c|
          c.header { Header(size: :h5, style: "margin: 0; color: rgba(0,0,0,.5); font-weight: 500;") { "Total Revenue" } }
          c.description {
            Wrapper(class: "kpi-value") { "$15,231.89" }
            Wrapper(class: "kpi-change positive") {
              Icon(name: "arrow up", size: "small")
              text "+20.1% from last month"
            }
            Wrapper(class: "mini-line-placeholder") {}
          }
        }

        # ── Row 2: Chat Widget | Exercise Minutes ──────────────────

        # Chat Widget
        Card(fluid: true) { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "center") {
              HStack(spacing: 3, align: "center") {
                Image(src: "/images/shadcn-dashboard/avatars/4.jpg", avatar: true)
                Wrapper {
                  Text(weight: "semibold") { "Sofia Davis" }
                  Text(size: "xs", color: "grey") { "m@example.com" }
                }
              }
              Popup(content: "Add user") {
                Button(icon: "plus", class: "circular basic icon mini")
              }
            }
          }
          c.description {
            Wrapper(class: "chat-messages-widget") {
              Wrapper(class: "chat-bubble agent") { "Hi, how can I help you today?" }
              Wrapper(class: "chat-bubble user") { "Hey, I'm having trouble with my account." }
              Wrapper(class: "chat-bubble agent") { "What seems to be the problem?" }
              Wrapper(class: "chat-bubble user") { "I can't log in." }
            }
          }
          c.extra {
            Input(placeholder: "Type your message...", action: true, fluid: true) {
              Button(color: "blue", icon: "paper plane")
            }
          }
        }

        # Exercise Minutes Card (spans 2 columns)
        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header {
              HStack(spacing: 3, justify: "between", align: "center") {
                Wrapper {
                  Header(size: :h4, style: "margin: 0;") { "Exercise Minutes" }
                  Text(size: "sm", color: "grey") { "Your exercise minutes are ahead of where you normally are." }
                }
                Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                  Icon(name: "folder open")
                  text " Export"
                  MenuMenu(class: "menu") {
                    MenuItem(icon: "file excel") { "Export as Excel" }
                    MenuItem(icon: "file pdf") { "Export as PDF" }
                  }
                }
              }
            }
            c.description {
              Wrapper(class: "exercise-chart") {}
            }
          }
        }

        # ── Row 3: Latest Payments | Payment Method ────────────────

        # Latest Payments Table (spans 2 columns)
        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header {
              HStack(spacing: 3, justify: "between", align: "center") {
                Wrapper {
                  Header(size: :h4, style: "margin: 0;") { "Latest Payments" }
                  Text(size: "sm", color: "grey") { "See recent payments from your customers here." }
                }
                Input(icon: "search", icon_position: "left", placeholder: "Filter payments...", size: "mini")
              }
            }
            c.description {
              Table(celled: false, basic: "very", size: "small") { |t|
                t.header {
                  TableRow {
                    TableCell(heading: true, width: 4) { "Customer" }
                    TableCell(heading: true, width: 4) { "Email" }
                    TableCell(heading: true, width: 2) { "Amount" }
                    TableCell(heading: true, width: 2) { "Status" }
                    TableCell(heading: true, width: 1) { "" }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "Kenneth Thompson" } }
                  TableCell { "ken99@yahoo.com" }
                  TableCell { Text(weight: "semibold") { "$316.00" } }
                  TableCell { Tag(size: "mini", color: "green", basic: true) { "Success" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "Abraham Lincoln" } }
                  TableCell { "abe45@gmail.com" }
                  TableCell { Text(weight: "semibold") { "$242.00" } }
                  TableCell { Tag(size: "mini", color: "green", basic: true) { "Success" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "Monserrat Rodriguez" } }
                  TableCell { "monserrat44@gmail.com" }
                  TableCell { Text(weight: "semibold") { "$837.00" } }
                  TableCell { Tag(size: "mini", color: "blue", basic: true) { "Processing" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "Silas Johnson" } }
                  TableCell { "silas22@gmail.com" }
                  TableCell { Text(weight: "semibold") { "$874.00" } }
                  TableCell { Tag(size: "mini", color: "green", basic: true) { "Success" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "Carmella DeVito" } }
                  TableCell { "carmella@hotmail.com" }
                  TableCell { Text(weight: "semibold") { "$721.00" } }
                  TableCell { Tag(size: "mini", color: "red", basic: true) { "Failed" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "Maria Garcia" } }
                  TableCell { "maria@gmail.com" }
                  TableCell { Text(weight: "semibold") { "$529.00" } }
                  TableCell { Tag(size: "mini", color: "green", basic: true) { "Success" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "James Wilson" } }
                  TableCell { "james34@outlook.com" }
                  TableCell { Text(weight: "semibold") { "$438.00" } }
                  TableCell { Tag(size: "mini", color: "blue", basic: true) { "Processing" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
                TableRow {
                  TableCell { Text(weight: "semibold") { "Sarah Jones" } }
                  TableCell { "sarah.j@yahoo.com" }
                  TableCell { Text(weight: "semibold") { "$692.00" } }
                  TableCell { Tag(size: "mini", color: "green", basic: true) { "Success" } }
                  TableCell {
                    Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                      Icon(name: "ellipsis horizontal")
                      MenuMenu(class: "menu") {
                        MenuItem(icon: "eye") { "View details" }
                        MenuItem(icon: "download") { "Download receipt" }
                        MenuItem(icon: "mail") { "Contact customer" }
                      }
                    }
                  }
                }
              }
              # Pagination
              HStack(spacing: 3, justify: "between", align: "center", style: "margin-top: 0.75em;") {
                Text(size: "xs", color: "grey") { "Showing 1-8 of 16 payments" }
                Wrapper(style: "display: flex; gap: 0.35em;") {
                  Button(icon: "chevron left", class: "basic icon mini", disabled: true)
                  Button(icon: "chevron right", class: "basic icon mini")
                }
              }
            }
          }
        }

        # Payment Method Card
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Payment Method" } }
          c.meta { "Add a new payment method to your account." }
          c.description {
            # Payment type selector
            Wrapper(class: "payment-types") {
              Wrapper(class: "payment-type") { Icon(name: "credit card"); text "Card" }
              Wrapper(class: "payment-type") { Icon(name: "paypal"); text "PayPal" }
              Wrapper(class: "payment-type") { Icon(name: "apple"); text "Apple" }
            }

            Form(size: "small") {
              Input(label: "Name on the card", placeholder: "John Doe", name: "card_name", fluid: true)
              Input(label: "City", placeholder: "New York", name: "city", fluid: true)
              Input(label: "Card number", placeholder: "4242 4242 4242 4242", name: "card_number", fluid: true)
              Wrapper(class: "three fields") {
                Wrapper(class: "field") {
                  text '<label>Expires</label>'.html_safe
                  Dropdown(selection: true, placeholder: "Month", fluid: true, class: "mini") {
                    MenuItem(value: "1") { "January" }
                    MenuItem(value: "2") { "February" }
                    MenuItem(value: "3") { "March" }
                    MenuItem(value: "4") { "April" }
                    MenuItem(value: "5") { "May" }
                    MenuItem(value: "6") { "June" }
                    MenuItem(value: "7") { "July" }
                    MenuItem(value: "8") { "August" }
                    MenuItem(value: "9") { "September" }
                    MenuItem(value: "10") { "October" }
                    MenuItem(value: "11") { "November" }
                    MenuItem(value: "12") { "December" }
                  }
                }
                Wrapper(class: "field") {
                  text '<label>Year</label>'.html_safe
                  Dropdown(selection: true, placeholder: "Year", fluid: true, class: "mini") {
                    MenuItem(value: "2026") { "2026" }
                    MenuItem(value: "2027") { "2027" }
                    MenuItem(value: "2028") { "2028" }
                    MenuItem(value: "2029") { "2029" }
                    MenuItem(value: "2030") { "2030" }
                  }
                }
                Input(label: "CVC", placeholder: "CVC", name: "cvc")
              }
            }
          }
          c.extra {
            Button(color: "blue", fluid: true) { "Continue" }
          }
        }

      }
    }
  }
}
