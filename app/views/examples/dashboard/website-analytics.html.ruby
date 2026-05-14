# Shadcn UI Kit Dashboard — Website Analytics
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
      Wrapper(class: "nav-item active") { Icon(name: "chart bar", inverted: true); LinkTo(href: "/examples/dashboard/website-analytics", style: "color: inherit; text-decoration: none;") { "Website Analytics" } }
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
        Header(size: :h2, style: "margin: 0;") { "Website Analytics" }
        Wrapper(style: "display: flex; gap: 0.5em; align-items: center;") {
          Button(class: "basic", icon: "calendar alternate outline") { " 17 Apr 2026 - 14 May 2026" }
          Button(color: "blue", icon: "download") { " Download" }
        }
      }

      # Widget grid
      Wrapper(class: "dash-grid") {

        # ── Row 1: Stat Cards ─────────────────────────────────────────
        [
          ["users", "Daily Active Users", "12,450", "+12.5%", "green"],
          ["clock", "Weekly Sessions", "45,200", "+8.3%", "green"],
          ["hourglass half", "Avg. Duration", "4m 32s", "-2.1%", "red"],
        ].each do |icon, label, val, change, color|
          Card(fluid: true) { |c|
            c.description {
              HStack(spacing: 3, justify: "between", align: "start") {
                Wrapper { Text(size: "sm", color: "grey") { label }; Wrapper(class: "kpi-value", style: "font-size: 1.4em;") { val } }
                Tag(color: color, basic: true, size: "mini") { Icon(name: "arrow #{color == 'green' ? 'up' : 'down'}"); text change }
              }
            }
          }
        end

        # ── Row 2: Earning Reports (span 2) | Tickets ──────────────
        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header {
              HStack(spacing: 3, justify: "between", align: "center") {
                Header(size: :h4, style: "margin: 0;") { "Earning Reports" }
                Dropdown(button: true, floating: true, compact: true, pointing: "top right", class: "icon basic mini") {
                  Icon(name: "folder open")
                  text " Export"
                  MenuMenu(class: "menu") { MenuItem(icon: "file excel") { "Excel" }; MenuItem(icon: "file pdf") { "PDF" } }
                }
              }
            }
            c.description {
              Wrapper(class: "kpi-chart-placeholder", style: "height: 180px;") {
                [42, 55, 68, 52, 75, 48, 62, 72, 58, 80, 65, 70].each { |h| text "<div class=\"mini-bar\" style=\"height:#{h}%\"></div>".html_safe }
              }
              Divider(hidden: true)
              HStack(spacing: 8, justify: "between") {
                [["dollar sign", "Earnings", "$24,500", "blue"], ["chart line", "Profit", "$18,200", "green"], ["hand holding usd", "Expense", "$6,300", "orange"]].each do |icon, label, val, color|
                  Wrapper {
                    HStack(spacing: 3, align: "center") { Icon(name: icon, color: color); Text(size: "sm", color: "grey") { label } }
                    Text(weight: "bold") { val }
                    Progress(value: rand(40..85), total: 100, color: color, size: "tiny") { |p| p.bar {} }
                  }
                end
              }
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Support Tickets" } }
          c.description {
            Wrapper(class: "kpi-value", style: "text-align: center;") { "88%" }
            Text(size: "xs", color: "grey", style: "text-align: center; display: block;") { "Resolution Rate" }
            Divider(hidden: true)
            HStack(spacing: 8, justify: "between") {
              [["New Tickets", "245", "blue"], ["Open", "42", "orange"], ["Resolved", "1,890", "green"]].each do |label, val, color|
                Wrapper(style: "text-align: center;") {
                  Icon(name: "circle", color: color)
                  Text(size: "xs", color: "grey") { label }
                  Text(weight: "bold", size: "sm") { val }
                }
              end
            }
          }
        }

        # ── Row 3: 3x metric cards ────────────────────────────────
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Website Overview" } }
          c.description {
            HStack(spacing: 8, justify: "between", style: "flex-wrap: wrap;") {
              [["Direct", "3,200"], ["Organic", "2,800"], ["Sessions", "45.2K"], ["Bounce Rate", "32%"], ["Page Views", "128K"], ["New Users", "8,420"]].each do |label, val|
                Wrapper(style: "width: 45%; margin-bottom: 0.5em;") {
                  Tag(basic: true, fluid: true, size: "small") {
                    Wrapper { Text(size: "xs", color: "grey") { label }; Text(weight: "bold") { val } }
                  }
                }
              end
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Avg. Daily Sales" } }
          c.description {
            Wrapper(class: "kpi-value") { "$28,450" }
            Tag(color: "red", basic: true, size: "mini") { Icon(name: "arrow down"); text "-2.1%" }
            Divider(hidden: true)
            Wrapper(class: "mini-line-placeholder", style: "height: 100px;") {}
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Sale Overview" } }
          c.description {
            Wrapper(class: "kpi-value") { "$42.5K" }
            HStack(spacing: 8, style: "margin-top: 0.5em;") {
              Tag(color: "blue", basic: true, size: "mini") { "Orders: 1,230" }
              Tag(color: "green", basic: true, size: "mini") { "Visits: 45.2K" }
            }
            Divider(hidden: true)
            Wrapper(style: "display: flex; height: 10px; border-radius: 5px; overflow: hidden;") {
              text '<div style="width:55%;background:#f2711c"></div><div style="width:45%;background:#21ba45"></div>'.html_safe
            }
          }
        }

        # ── Row 4: Sales by Country | Total Earning | Campaign ─────
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Sales by Countries" } }
          c.description {
            List(divided: true, relaxed: true) {
              [["us", "United States", "$12,450", "+8.2%", "green"], ["gb", "United Kingdom", "$8,320", "+5.1%", "green"], ["de", "Germany", "$6,180", "+3.4%", "green"], ["fr", "France", "$4,920", "-1.2%", "red"], ["jp", "Japan", "$3,750", "+6.8%", "green"], ["au", "Australia", "$2,890", "+2.1%", "green"]].each do |flag, country, amount, change, color|
                ListItem {
                  HStack(spacing: 3, justify: "between", align: "center") {
                    HStack(spacing: 3, align: "center") { Flag(country: flag); Text(size: "sm") { country } }
                    HStack(spacing: 3, align: "center") { Text(weight: "semibold", size: "sm") { amount }; Tag(color: color, basic: true, size: "mini") { change } }
                  }
                }
              end
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Total Earning" } }
          c.description {
            Wrapper(class: "kpi-chart-placeholder", style: "height: 120px;") {
              [52, 65, 48, 72, 55, 68, 42, 78].each { |h| text "<div class=\"mini-bar\" style=\"height:#{h}%\"></div>".html_safe }
            }
            Divider(hidden: true)
            List(divided: true) {
              [["Revenue", "$18,500", "green", "arrow up"], ["Sales", "$12,200", "green", "arrow up"]].each do |label, val, color, icon|
                ListItem {
                  HStack(spacing: 3, justify: "between", align: "center") {
                    Text(size: "sm") { label }
                    HStack(spacing: 2, align: "center") { Text(weight: "semibold") { val }; Icon(name: icon, color: color, size: "small") }
                  }
                }
              end
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Campaign State" } }
          c.description {
            List(divided: true, relaxed: true) {
              [["mail", "Emails Sent", "24,500", "+8%", "green"], ["eye", "Impressions", "1.2M", "+15%", "green"], ["mouse pointer", "Clicks", "45,200", "+5%", "green"], ["user plus", "Signups", "1,840", "+22%", "green"], ["exclamation circle", "Bounced", "320", "-12%", "red"], ["user minus", "Unsubscribed", "45", "+2%", "red"]].each do |icon, label, val, change, color|
                ListItem {
                  HStack(spacing: 3, justify: "between", align: "center") {
                    HStack(spacing: 3, align: "center") { Icon(name: icon, color: "grey"); Text(size: "sm") { label } }
                    HStack(spacing: 3, align: "center") { Text(weight: "semibold", size: "sm") { val }; Tag(color: color, basic: true, size: "mini") { change } }
                  }
                }
              end
            }
          }
        }

      }
    }
  }
}
