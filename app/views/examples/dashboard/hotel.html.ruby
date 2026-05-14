# Shadcn UI Kit Dashboard — Hotel Management
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
      Wrapper(class: "nav-item active") { Icon(name: "building", inverted: true); LinkTo(href: "/examples/dashboard/hotel", style: "color: inherit; text-decoration: none;") { "Hotel" } }
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
        Header(size: :h2, style: "margin: 0;") { "Hotel Management" }
        Wrapper(style: "display: flex; gap: 0.5em; align-items: center;") {
          Button(class: "basic", icon: "calendar alternate outline") { " 17 Apr 2026 - 14 May 2026" }
          Button(color: "blue", icon: "download") { " Download" }
        }
      }

      # Widget grid
      Wrapper(class: "dash-grid") {

        # ── Row 1: Stat Cards ─────────────────────────────────────────
        [
          ["clock", "blue", "Check-in", "245", "+12%"],
          ["sign-out", "green", "Check-out", "182", "+8%"],
          ["users", "purple", "Guests", "1,420", "+15%"],
          ["dollar sign", "orange", "Revenue", "$48,200", "+22%"],
        ].each do |icon, color, label, val, change|
          Card(fluid: true) { |c|
            c.description {
              HStack(spacing: 3, justify: "between", align: "start") {
                Wrapper { Text(size: "sm", color: "grey") { label }; Wrapper(class: "kpi-value", style: "font-size: 1.4em;") { val } }
                Icon(name: icon, color: color, size: "large", circular: true, inverted: true)
              }
              Tag(color: "green", basic: true, size: "mini") { change }
            }
          }
        end

        # ── Row 2: Reservations | Campaign (span 2) ───────────────
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Reservations" } }
          c.description {
            Wrapper(class: "kpi-value", style: "text-align: center;") { "1,847" }
            Text(size: "xs", color: "grey", style: "text-align: center; display: block;") { "Total Sales" }
            Divider(hidden: true)
            List(divided: true) {
              [["Confirmed", 820, "green"], ["Checked In", 540, "blue"], ["Checked Out", 487, "grey"]].each do |label, count, color|
                ListItem {
                  HStack(spacing: 3, justify: "between", align: "center") {
                    HStack(spacing: 3, align: "center") { Icon(name: "circle", color: color, size: "tiny"); Text(size: "sm") { label } }
                    Text(weight: "semibold", size: "sm") { count.to_s }
                  }
                }
              end
            }
          }
        }

        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header {
              HStack(spacing: 3, justify: "between", align: "center") {
                Header(size: :h4, style: "margin: 0;") { "Campaign Overview" }
                Button(class: "basic mini", icon: "download") { " Export" }
              }
            }
            c.description {
              HStack(spacing: 12, style: "margin-bottom: 1em;") {
                Wrapper { Wrapper(class: "kpi-value", style: "font-size: 1.3em;") { "2,450" }; Text(size: "xs", color: "grey") { "Booked" } }
                Wrapper { Wrapper(class: "kpi-value", style: "font-size: 1.3em;") { "1,890" }; Text(size: "xs", color: "grey") { "Visited" } }
              }
              Wrapper(class: "mini-line-placeholder", style: "height: 160px;") {}
            }
          }
        }

        # ── Row 3: Activities | Revenue | Bookings ─────────────────
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Recent Activities" } }
          c.description {
            Feed(size: "small") {
              [
                ["1", "John Smith", "checked in to Room 405", "2 hours ago"],
                ["2", "Emma Wilson", "requested room service", "3 hours ago"],
                ["3", "Carlos Rivera", "booked Suite 12", "5 hours ago"],
                ["4", "Sarah Lee", "checked out from Room 201", "Yesterday"],
              ].each do |av, name, action, time|
                FeedItem { |e|
                  e.label { Image(src: "/images/shadcn-dashboard/avatars/#{av}.jpg") }
                  e.summary { Text(weight: "semibold") { name }; text " #{action}" }
                  e.date { time }
                }
              end
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Revenue" } }
          c.description {
            Wrapper(class: "kpi-chart-placeholder", style: "height: 160px;") {
              [42, 58, 65, 72, 55, 68, 48, 75, 62, 80, 58, 70].each { |h| text "<div class=\"mini-bar\" style=\"height:#{h}%\"></div>".html_safe }
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Bookings" } }
          c.description {
            HStack(spacing: 3, justify: "between", align: "center", style: "margin-bottom: 0.5em;") {
              Wrapper { Text(size: "sm", color: "grey") { "Online" }; Text(weight: "bold") { "1,245" } }
              Wrapper(style: "text-align: right;") { Text(size: "sm", color: "grey") { "Offline" }; Text(weight: "bold") { "602" } }
            }
            # Split bar
            Wrapper(style: "display: flex; height: 10px; border-radius: 5px; overflow: hidden;") {
              text '<div style="width:67%;background:#2185d0"></div><div style="width:33%;background:#21ba45"></div>'.html_safe
            }
          }
        }

        # ── Row 4: Booking List (span 3 via full width trick) ──────
        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header {
              HStack(spacing: 3, justify: "between", align: "center") {
                Header(size: :h4, style: "margin: 0;") { "Booking List" }
                Input(icon: "search", icon_position: "left", placeholder: "Search bookings...", size: "mini")
              }
            }
            c.description {
              Table(basic: "very", size: "small", selectable: true) { |t|
                t.header {
                  TableRow {
                    TableCell(heading: true, width: 3) { "Guest" }
                    TableCell(heading: true, width: 2) { "Room" }
                    TableCell(heading: true, width: 2) { "Check-in" }
                    TableCell(heading: true, width: 2) { "Check-out" }
                    TableCell(heading: true, width: 2) { "Amount" }
                    TableCell(heading: true, width: 2) { "Status" }
                  }
                }
                [
                  ["John Smith",    "Deluxe 405",  "May 10", "May 14", "$1,200", "Confirmed", "green"],
                  ["Emma Wilson",   "Suite 12",    "May 11", "May 15", "$2,800", "Checked In", "blue"],
                  ["Carlos Rivera", "Standard 201","May 8",  "May 12", "$640",   "Checked Out","grey"],
                  ["Sarah Lee",     "Deluxe 318",  "May 12", "May 16", "$1,400", "Confirmed", "green"],
                  ["Alex Kim",      "Suite 5",     "May 13", "May 17", "$3,200", "Pending",   "yellow"],
                  ["Maria Garcia",  "Standard 108","May 9",  "May 11", "$320",   "Checked Out","grey"],
                ].each do |name, room, cin, cout, amount, status, color|
                  TableRow {
                    TableCell { Text(weight: "semibold") { name } }
                    TableCell { room }
                    TableCell { cin }
                    TableCell { cout }
                    TableCell { Text(weight: "semibold") { amount } }
                    TableCell { Tag(size: "mini", color: color, basic: true) { status } }
                  }
                end
              }
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Recent Patients" } }
          c.description {
            List(divided: true, relaxed: true) {
              [["1","John Smith","Room 405","May 10"], ["2","Emma Wilson","Suite 12","May 11"], ["3","Carlos Rivera","Std 201","May 8"], ["4","Sarah Lee","Deluxe 318","May 12"]].each do |av, name, room, date|
                ListItem {
                  HStack(spacing: 3, align: "center") {
                    Image(src: "/images/shadcn-dashboard/avatars/#{av}.jpg", avatar: true)
                    Wrapper {
                      Text(weight: "semibold", size: "sm") { name }
                      Text(size: "xs", color: "grey") { "#{room} \u00B7 #{date}" }
                    }
                  }
                }
              end
            }
            Button(class: "basic", fluid: true, size: "mini") { text "View all "; Icon(name: "chevron right") }
          }
        }

      }
    }
  }
}
