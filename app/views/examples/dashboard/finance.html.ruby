# Shadcn UI Kit Dashboard — Finance Dashboard
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
      Wrapper(class: "nav-item active") { Icon(name: "chart line", inverted: true); LinkTo(href: "/examples/dashboard/finance", style: "color: inherit; text-decoration: none;") { "Finance" } }
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
        Header(size: :h2, style: "margin: 0;") { "Finance Dashboard" }
        Wrapper(style: "display: flex; gap: 0.5em; align-items: center;") {
          Button(class: "basic", icon: "calendar alternate outline") { " 17 Apr 2026 - 14 May 2026" }
          Button(color: "blue", icon: "download") { " Download" }
        }
      }

      # Widget grid
      Wrapper(class: "dash-grid") {

        # ── Row 1: KPI Cards ──────────────────────────────────────────
        Card(fluid: true) { |c|
          c.description {
            HStack(spacing: 3, justify: "between", align: "start") {
              Wrapper { Text(size: "sm", color: "grey") { "My Balance" }; Wrapper(class: "kpi-value") { "$24,500" } }
              Icon(name: "wallet", color: "blue", size: "large", circular: true, inverted: true)
            }
            HStack(spacing: 4, style: "margin-top: 0.5em;") {
              Button(color: "blue", size: "mini") { Icon(name: "exchange"); text " Transfer" }
              Button(class: "basic mini") { Icon(name: "money bill alternate"); text " Request" }
            }
          }
        }
        Card(fluid: true) { |c|
          c.description {
            HStack(spacing: 3, justify: "between", align: "start") {
              Wrapper { Text(size: "sm", color: "grey") { "Net Profit" }; Wrapper(class: "kpi-value") { "$18,240" } }
              Icon(name: "chart line", color: "green", size: "large", circular: true, inverted: true)
            }
            Tag(color: "green", basic: true, size: "mini") { Icon(name: "arrow up"); text "+15.3%" }
          }
        }
        Card(fluid: true) { |c|
          c.description {
            HStack(spacing: 3, justify: "between", align: "start") {
              Wrapper { Text(size: "sm", color: "grey") { "Expenses" }; Wrapper(class: "kpi-value") { "$6,260" } }
              Icon(name: "arrow down", color: "red", size: "large", circular: true, inverted: true)
            }
            Tag(color: "red", basic: true, size: "mini") { Icon(name: "arrow down"); text "-3.2%" }
          }
        }

        # ── Row 2: Income Sources | Monthly Expenses | Summary ─────
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Revenue (Income Sources)" } }
          c.description {
            Wrapper(class: "kpi-value") { "$92,000" }
            # Segmented bar
            Wrapper(style: "display: flex; height: 10px; border-radius: 5px; overflow: hidden; margin: 0.75em 0;") {
              text '<div style="width:40%;background:#2185d0"></div><div style="width:25%;background:#21ba45"></div><div style="width:20%;background:#f2711c"></div><div style="width:15%;background:#6435c9"></div>'.html_safe
            }
            List(divided: true) {
              [["Subscriptions", "$36,800", "blue"], ["Sales", "$23,000", "green"], ["Services", "$18,400", "orange"], ["Affiliate", "$13,800", "purple"]].each do |src, val, color|
                ListItem {
                  HStack(spacing: 3, justify: "between", align: "center") {
                    HStack(spacing: 3, align: "center") { Icon(name: "circle", color: color, size: "tiny"); Text(size: "sm") { src } }
                    Text(weight: "semibold", size: "sm") { val }
                  }
                }
              end
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Monthly Expenses" } }
          c.description {
            Wrapper(class: "kpi-chart-placeholder", style: "height: 180px;") {
              [35, 48, 62, 45, 55, 42].each { |h| text "<div class=\"mini-bar\" style=\"height:#{h}%; background: #f2711c;\"></div>".html_safe }
            }
            Text(size: "xs", color: "grey", style: "margin-top: 0.5em;") {
              Icon(name: "chart line", color: "green")
              text "Trending down 5.2% this month"
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Summary" } }
          c.description {
            Wrapper(class: "kpi-value", style: "text-align: center;") { "$92,000" }
            Text(size: "xs", color: "grey", style: "text-align: center; display: block;") { "Total Income" }
            Divider(hidden: true)
            List(divided: true) {
              [["Income", "$68,500", "green"], ["Savings", "$15,200", "blue"], ["Investment", "$5,800", "purple"], ["Expense", "$2,500", "red"]].each do |label, val, color|
                ListItem {
                  HStack(spacing: 3, justify: "between", align: "center") {
                    HStack(spacing: 3, align: "center") { Icon(name: "circle", color: color, size: "tiny"); Text(size: "sm") { label } }
                    Text(weight: "semibold", size: "sm") { val }
                  }
                }
              end
            }
          }
        }

        # ── Row 3: Transactions (span 2) | Savings + Cards ─────────
        Wrapper(class: "span-2") {
          Card(fluid: true) { |c|
            c.header { Header(size: :h4, style: "margin: 0;") { "Transactions" } }
            c.description {
              Table(basic: "very", size: "small", selectable: true) { |t|
                t.header {
                  TableRow {
                    TableCell(heading: true, width: 4) { "Description" }
                    TableCell(heading: true, width: 2) { "Type" }
                    TableCell(heading: true, width: 2) { "Date" }
                    TableCell(heading: true, width: 2) { "Amount" }
                  }
                }
                [
                  ["book open", "Subscription Payment", "Recurring", "May 12", "-$49.99", "red"],
                  ["car", "Gas Station", "Transport", "May 11", "-$45.00", "red"],
                  ["coffee", "Coffee Shop", "Food", "May 10", "-$5.50", "red"],
                  ["shopping bag", "Online Shopping", "Shopping", "May 9", "-$128.00", "red"],
                  ["money bill alternate", "Salary Deposit", "Income", "May 1", "+$8,500.00", "green"],
                  ["chart line", "Investment Return", "Income", "Apr 28", "+$320.00", "green"],
                  ["home", "Rent Payment", "Housing", "Apr 25", "-$1,200.00", "red"],
                ].each do |icon, desc, type, date, amount, color|
                  TableRow {
                    TableCell {
                      HStack(spacing: 3, align: "center") {
                        Icon(name: icon, color: "grey", circular: true, inverted: true)
                        Text(weight: "semibold") { desc }
                      }
                    }
                    TableCell { Tag(size: "mini", basic: true) { type } }
                    TableCell { Text(size: "xs", color: "grey") { date } }
                    TableCell { Text(weight: "semibold", color: color) { amount } }
                  }
                end
              }
            }
          }
        }

        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Saving Goal" } }
          c.description {
            HStack(spacing: 3, justify: "between", align: "baseline") {
              Wrapper(class: "kpi-value", style: "font-size: 1.4em;") { "$1,052.98" }
              Text(size: "sm", color: "grey") { "of $1,200" }
            }
            Progress(value: 88, total: 100, color: "green", indicating: true) { |p| p.bar {}; p.label { "88% achieved" } }
            Divider(hidden: true)
            Header(size: :h5, style: "margin: 0;") { "My Cards" }
            Divider(hidden: true)
            # Credit card representations
            [
              ["blue", "**** 4532", "Visa", "$12,450"],
              ["purple", "**** 8901", "MasterCard", "$8,320"],
            ].each do |color, num, brand, balance|
              Segment(inverted: true, color: color, compact: true, style: "border-radius: 0.75em; margin-bottom: 0.5em;") {
                HStack(spacing: 3, justify: "between", align: "center") {
                  Wrapper {
                    Text(size: "xs") { brand }
                    Text(weight: "bold") { num }
                  }
                  Text(weight: "bold") { balance }
                }
              }
            end
          }
        }

      }
    }
  }
}
