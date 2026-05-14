# Cosmic — SaaS Landing Page Example
# Translated from https://github.com/bundui/cosmic

text '<style>
  /* Override example layout for landing page */
  #example-content { padding: 0 !important; }

  /* Section spacing */
  .landing-section { padding: 4em 0; }
  .landing-section:first-child { padding-top: 6em; }

  /* Section header pattern */
  .section-header { text-align: center; max-width: 600px; margin: 0 auto 3em; }
  .section-header .subtitle { text-transform: uppercase; letter-spacing: 0.15em; color: #2185d0; font-weight: 600; font-size: 0.85em; margin-bottom: 0.5em; }
  .section-header h2 { margin-top: 0.25em !important; margin-bottom: 0.5em !important; }
  .section-header .description { color: rgba(0,0,0,.5); font-size: 1.1em; line-height: 1.6; }

  /* Navbar */
  .landing-nav.ui.menu { border-radius: 0.5em !important; margin: 0.75em 1em !important; background: rgba(255,255,255,0.85) !important; backdrop-filter: blur(8px); }
  .landing-nav .item img.logo { margin-right: 0.5em; }

  /* Hero */
  .hero-section { text-align: center; padding: 8em 2em 4em !important; }
  .hero-section h1 { max-width: 700px; margin: 0 auto 0.5em !important; }
  .hero-section .hero-sub { max-width: 550px; margin: 0 auto; color: rgba(0,0,0,.5); font-size: 1.15em; line-height: 1.6; }
  .hero-cta { display: flex; gap: 0.75em; justify-content: center; margin-top: 1.75em; }
  .trust-signals { display: flex; gap: 1.5em; justify-content: center; margin-top: 1.5em; flex-wrap: wrap; }
  .trust-signals .item { display: flex; align-items: center; gap: 0.4em; color: rgba(0,0,0,.5); font-size: 0.95em; }
  .hero-image { max-width: 900px; margin: 3em auto 0; }
  .hero-image img { width: 100%; border-radius: 0.75em; box-shadow: 0 20px 60px rgba(0,0,0,.12); }

  /* Sponsors */
  .sponsors-section { padding: 2em 0 3em !important; }
  .sponsors-row { display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 2.5em; }
  .sponsors-row .sponsor-item { display: flex; align-items: center; gap: 0.5em; color: rgba(0,0,0,.45); font-size: 1.15em; font-weight: 500; }

  /* Benefits counter */
  .benefit-number { font-size: 3em; font-weight: 700; color: rgba(0,0,0,.06); position: absolute; top: 0.1em; right: 0.4em; }
  .benefit-card { position: relative; overflow: hidden; }

  /* Features */
  .feature-card .ui.card { height: 100%; }
  .feature-icon-wrap { background: rgba(33,133,208,.08); border-radius: 50%; width: 42px; height: 42px; display: flex; align-items: center; justify-content: center; flex-shrink: 0; }

  /* Services PRO badge */
  .pro-badge { position: absolute !important; top: -2px; right: -2px; z-index: 1; }

  /* Testimonial stars */
  .stars { color: #f2711c; margin-bottom: 0.5em; }

  /* Team card image */
  .team-img-wrap { overflow: hidden; border-radius: 0.5em 0.5em 0 0; }
  .team-img-wrap img { width: 100%; height: 200px; object-fit: cover; filter: saturate(0); transition: filter 0.3s, transform 0.3s; }
  .team-img-wrap:hover img { filter: saturate(1); transform: scale(1.05); }

  /* Pricing */
  .pricing-popular { border-color: #2185d0 !important; box-shadow: 0 0 0 2px #2185d0 !important; }
  .pricing-popular-label { position: absolute; top: -1px; right: -1px; border-radius: 0 0.28em 0 0.28em; }
  .pricing-card { position: relative; height: 100%; }
  .price-amount { font-size: 2.5em; font-weight: 700; line-height: 1; }
  .price-period { color: rgba(0,0,0,.4); font-size: 0.9em; }
  .feature-check { color: #2185d0; margin-right: 0.5em; }

  /* Community */
  .community-card { text-align: center; max-width: 700px; margin: 0 auto; }

  /* Contact info cards */
  .contact-info-card { display: flex; align-items: flex-start; gap: 0.75em; padding: 1em; background: rgba(0,0,0,.02); border: 1px solid rgba(34,36,38,.1); border-radius: 0.5em; margin-bottom: 0.75em; }

  /* Footer */
  .landing-footer { background: rgba(0,0,0,.03); border: 1px solid rgba(34,36,38,.1); border-radius: 1em; padding: 2.5em; margin: 0 1em; }
  .footer-bottom { display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 1em; }
  .footer-socials { display: flex; gap: 0.25em; }
  .footer-links a { display: block; color: rgba(0,0,0,.5); margin-bottom: 0.4em; text-decoration: none; }
  .footer-links a:hover { color: rgba(0,0,0,.85); }
</style>'.html_safe

# ── 1. Navbar ─────────────────────────────────────────────────────────
Menu(fixed: "top", class: "landing-nav") {
  Container {
    MenuItem(header: true, href: "#") {
      Icon(name: "sun", color: "blue")
      text " Cosmic"
    }

    MenuItem(dropdown: true) {
      text "Products "
      Icon(name: "dropdown")
      MenuMenu(class: "menu") {
        MenuItem(icon: "rocket") { "LaunchPad" }
        MenuItem(icon: "chart line") { "Orbit Analytics" }
        MenuItem(icon: "th") { "Nova Integrator" }
      }
    }

    MenuItem(href: "#solutions") { "Solutions" }
    MenuItem(href: "#pricing") { "Pricing" }
    MenuItem(href: "#team") { "Team" }
    MenuItem(href: "#contact") { "Contact" }

    SubMenu(position: "right") {
      MenuItem { Button(class: "basic") { "Log in" } }
      MenuItem { Button(color: "blue") { text "Get Started "; Icon(name: "chevron right") } }
    }
  }
}

# ── 2. Hero ───────────────────────────────────────────────────────────
Wrapper(class: "landing-section hero-section") {
  Container {
    Tag(color: "blue", basic: true, size: "small") {
      Tag(color: "blue", size: "mini") { "New" }
      text " AI-Powered Optimization"
    }

    Header(size: :h1) { "Optimize Your Website with AI Support" }

    Wrapper(class: "hero-sub") {
      text "Meet our AI-powered SaaS solution that delivers intelligent optimization recommendations and real-time analytics to elevate your online performance."
    }

    Wrapper(class: "hero-cta") {
      Button(color: "blue", size: "large") { text "Start Free Trial "; Icon(name: "chevron right") }
      Button(size: "large", class: "basic") { "Book a Demo" }
    }

    Wrapper(class: "trust-signals") {
      Wrapper(class: "item") { Icon(name: "check circle", color: "green"); text "No credit card" }
      Wrapper(class: "item") { Icon(name: "check circle", color: "green"); text "14-day trial" }
      Wrapper(class: "item") { Icon(name: "check circle", color: "green"); text "Cancel anytime" }
    }

    Wrapper(class: "hero-image") {
      Image(src: "/images/cosmic/hero.png", fluid: true)
    }
  }
}

# ── 3. Sponsors ───────────────────────────────────────────────────────
Wrapper(class: "landing-section sponsors-section") {
  Container {
    Wrapper(class: "sponsors-row") {
      Wrapper(class: "sponsor-item") { Icon(name: "chess queen"); text "Amazon" }
      Wrapper(class: "sponsor-item") { Icon(name: "leaf"); text "Linkedin" }
      Wrapper(class: "sponsor-item") { Icon(name: "ghost"); text "Google" }
      Wrapper(class: "sponsor-item") { Icon(name: "puzzle piece"); text "Apple" }
      Wrapper(class: "sponsor-item") { Icon(name: "paw"); text "Android" }
      Wrapper(class: "sponsor-item") { Icon(name: "cookie bite"); text "Acmee" }
      Wrapper(class: "sponsor-item") { Icon(name: "theater masks"); text "Shadcn" }
    }
  }
}

# ── 4. Benefits ───────────────────────────────────────────────────────
Wrapper(class: "landing-section", id: "benefits") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "Benefits" }
      Header(size: :h2) { "What Do We Bring to You?" }
      Wrapper(class: "description") { "All the innovative solutions you need to excel in the market, from intelligent automation to data-driven insights." }
    }

    Grid(columns: 2, stackable: true, doubling: true) {
      Column {
        Card(fluid: true, class: "benefit-card") { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "center") {
              Wrapper(class: "feature-icon-wrap") { Icon(name: "th", color: "blue") }
              Wrapper(class: "benefit-number") { "01" }
            }
            Header(size: :h4, style: "margin-top: 0.75em;") { "AI-Powered Automation" }
          }
          c.description { "Leverage cutting-edge AI to automate repetitive tasks and streamline your workflow." }
        }
      }
      Column {
        Card(fluid: true, class: "benefit-card") { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "center") {
              Wrapper(class: "feature-icon-wrap") { Icon(name: "chart line", color: "blue") }
              Wrapper(class: "benefit-number") { "02" }
            }
            Header(size: :h4, style: "margin-top: 0.75em;") { "Real Time Data Analytics" }
          }
          c.description { "Monitor your performance in real time with comprehensive dashboards and actionable insights." }
        }
      }
      Column {
        Card(fluid: true, class: "benefit-card") { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "center") {
              Wrapper(class: "feature-icon-wrap") { Icon(name: "wallet", color: "blue") }
              Wrapper(class: "benefit-number") { "03" }
            }
            Header(size: :h4, style: "margin-top: 0.75em;") { "Personalized Experience" }
          }
          c.description { "Deliver tailored experiences to every user with AI-powered personalization and recommendations." }
        }
      }
      Column {
        Card(fluid: true, class: "benefit-card") { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "center") {
              Wrapper(class: "feature-icon-wrap") { Icon(name: "magic", color: "blue") }
              Wrapper(class: "benefit-number") { "04" }
            }
            Header(size: :h4, style: "margin-top: 0.75em;") { "Scalable Structure" }
          }
          c.description { "Scale your operations effortlessly as your business grows with our flexible infrastructure." }
        }
      }
    }
  }
}

# ── 5. Features ───────────────────────────────────────────────────────
Wrapper(class: "landing-section", id: "features") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "Features" }
      Header(size: :h2) { "Everything You Need to Succeed" }
      Wrapper(class: "description") { "Our comprehensive platform provides all the tools and features you need to optimize your online presence." }
    }

    Grid(columns: 3, stackable: true, doubling: true) {
      Column(class: "feature-card") {
        Card(fluid: true) { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "start") {
              Header(size: :h4, style: "margin: 0;") { "AI-Powered Optimization" }
              Wrapper(class: "feature-icon-wrap") { Icon(name: "mobile alternate", color: "blue") }
            }
          }
          c.description { "Our AI analyzes your website and automatically suggests optimizations for better performance." }
        }
      }
      Column(class: "feature-card") {
        Card(fluid: true) { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "start") {
              Header(size: :h4, style: "margin: 0;") { "Real-Time Analytics" }
              Wrapper(class: "feature-icon-wrap") { Icon(name: "check circle", color: "blue") }
            }
          }
          c.description { "Monitor your website metrics in real-time with comprehensive dashboards." }
        }
      }
      Column(class: "feature-card") {
        Card(fluid: true) { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "start") {
              Header(size: :h4, style: "margin: 0;") { "SEO Enhancement" }
              Wrapper(class: "feature-icon-wrap") { Icon(name: "bullseye", color: "blue") }
            }
          }
          c.description { "Improve your search engine rankings with AI-driven SEO recommendations and tools." }
        }
      }
      Column(class: "feature-card") {
        Card(fluid: true) { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "start") {
              Header(size: :h4, style: "margin: 0;") { "Advanced Security" }
              Wrapper(class: "feature-icon-wrap") { Icon(name: "window restore", color: "blue") }
            }
          }
          c.description { "Enterprise-grade security features to protect your data and your users." }
        }
      }
      Column(class: "feature-card") {
        Card(fluid: true) { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "start") {
              Header(size: :h4, style: "margin: 0;") { "Smart Integrations" }
              Wrapper(class: "feature-icon-wrap") { Icon(name: "mouse pointer", color: "blue") }
            }
          }
          c.description { "Connect with your favorite tools and services through our extensive integration ecosystem." }
        }
      }
      Column(class: "feature-card") {
        Card(fluid: true) { |c|
          c.header {
            HStack(spacing: 3, justify: "between", align: "start") {
              Header(size: :h4, style: "margin: 0;") { "24/7 AI Monitoring" }
              Wrapper(class: "feature-icon-wrap") { Icon(name: "lock", color: "blue") }
            }
          }
          c.description { "Round-the-clock AI monitoring ensures your website is always performing at its best." }
        }
      }
    }
  }
}

# ── 6. Services ───────────────────────────────────────────────────────
Wrapper(class: "landing-section", id: "solutions") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "Services" }
      Header(size: :h2) { "Grow Your Business" }
      Wrapper(class: "description") { "From marketing and sales to operations and strategy, we have the expertise to help you achieve your goals." }
    }

    Grid(columns: 2, stackable: true, doubling: true, centered: true, style: "max-width: 800px; margin: 0 auto;") {
      Column {
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Consultation Services" } }
          c.description { "Our team of experts is ready to help you with strategic planning and implementation." }
        }
      }
      Column {
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Custom Domain Integration" } }
          c.description { "Seamlessly integrate your custom domain with our platform for a professional online presence." }
        }
      }
      Column {
        Card(fluid: true) { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Social Media Integrations" } }
          c.description { "Connect and manage all your social media platforms from one centralized dashboard." }
        }
      }
      Column {
        Card(fluid: true, class: "pricing-card") { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Email Marketing Integrations" } }
          c.description { "Integrate your email marketing tools to streamline campaigns and track results." }
          Tag(color: "blue", size: "mini", class: "pro-badge") { "PRO" }
        }
      }
      Column {
        Card(fluid: true, class: "pricing-card") { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "SEO Optimization" } }
          c.description { "Advanced SEO tools and recommendations to boost your search engine visibility." }
          Tag(color: "blue", size: "mini", class: "pro-badge") { "PRO" }
        }
      }
      Column {
        Card(fluid: true, class: "pricing-card") { |c|
          c.header { Header(size: :h4, style: "margin: 0;") { "Ongoing Support" } }
          c.description { "Dedicated support team available to assist you every step of the way." }
          Tag(color: "blue", size: "mini", class: "pro-badge") { "PRO" }
        }
      }
    }
  }
}

# ── 7. Testimonials ───────────────────────────────────────────────────
Wrapper(class: "landing-section") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "Testimonials" }
      Header(size: :h2) { "Loved by Teams Worldwide" }
      Wrapper(class: "description") { "Don't just take our word for it. Hear from the teams who use our platform every day." }
    }

    Grid(columns: 3, stackable: true, doubling: true) {
      Column {
        Card(fluid: true) { |c|
          c.header {
            Wrapper(class: "stars") {
              Icon(name: "star"); Icon(name: "star"); Icon(name: "star"); Icon(name: "star"); Icon(name: "star")
            }
          }
          c.description { "This platform has completely transformed how we manage our web presence. The AI insights are incredibly accurate." }
          c.extra {
            HStack(spacing: 3, align: "center") {
              Image(src: "/images/cosmic/avatars/7.png", avatar: true)
              Wrapper {
                Text(weight: "semibold") { "John Doe" }
                Text(size: "xs", color: "grey") { "Product Manager" }
              }
            }
          }
        }
      }
      Column {
        Card(fluid: true) { |c|
          c.header {
            Wrapper(class: "stars") {
              Icon(name: "star"); Icon(name: "star"); Icon(name: "star"); Icon(name: "star"); Icon(name: "star")
            }
          }
          c.description { "The real-time analytics feature has been a game-changer for our security operations team." }
          c.extra {
            HStack(spacing: 3, align: "center") {
              Image(src: "/images/cosmic/avatars/6.png", avatar: true)
              Wrapper {
                Text(weight: "semibold") { "Sophia Collins" }
                Text(size: "xs", color: "grey") { "Cybersecurity Analyst" }
              }
            }
          }
        }
      }
      Column {
        Card(fluid: true) { |c|
          c.header {
            Wrapper(class: "stars") {
              Icon(name: "star"); Icon(name: "star"); Icon(name: "star"); Icon(name: "star"); Icon(name: "star")
            }
          }
          c.description { "Outstanding AI monitoring capabilities. It caught performance issues before they impacted our users." }
          c.extra {
            HStack(spacing: 3, align: "center") {
              Image(src: "/images/cosmic/avatars/5.png", avatar: true)
              Wrapper {
                Text(weight: "semibold") { "Adam Johnson" }
                Text(size: "xs", color: "grey") { "Chief Technology Officer" }
              }
            }
          }
        }
      }
    }
  }
}

# ── 8. Team ───────────────────────────────────────────────────────────
Wrapper(class: "landing-section", id: "team") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "Team" }
      Header(size: :h2) { "The Company Dream Team" }
    }

    Grid(columns: 4, stackable: true, doubling: true) {
      Column {
        Card(fluid: true) { |c|
          c.image {
            Wrapper(class: "team-img-wrap") {
              Image(src: "/images/cosmic/team/michael.jpg", fluid: true)
            }
          }
          c.header {
            text "Michael "
            Text(color: "blue") { "Holland" }
          }
          c.meta { "DevOps Engineer, CI/CD Pipeline Mastermind" }
          c.extra {
            Button(icon: "linkedin", class: "circular basic icon mini")
          }
        }
      }
      Column {
        Card(fluid: true) { |c|
          c.image {
            Wrapper(class: "team-img-wrap") {
              Image(src: "/images/cosmic/team/zoe.jpg", fluid: true)
            }
          }
          c.header {
            text "Zoe "
            Text(color: "blue") { "Garcia" }
          }
          c.meta { "JavaScript Evangelist, Deno Champion" }
          c.extra {
            Button(icon: "linkedin", class: "circular basic icon mini")
            Button(icon: "github", class: "circular basic icon mini")
          }
        }
      }
      Column {
        Card(fluid: true) { |c|
          c.image {
            Wrapper(class: "team-img-wrap") {
              Image(src: "/images/cosmic/team/evan.jpg", fluid: true)
            }
          }
          c.header {
            text "Evan "
            Text(color: "blue") { "James" }
          }
          c.meta { "Backend Developer" }
          c.extra {
            Button(icon: "linkedin", class: "circular basic icon mini")
            Button(icon: "github", class: "circular basic icon mini")
            Button(icon: "twitter", class: "circular basic icon mini")
          }
        }
      }
      Column {
        Card(fluid: true) { |c|
          c.image {
            Wrapper(class: "team-img-wrap") {
              Image(src: "/images/cosmic/team/pam.jpg", fluid: true)
            }
          }
          c.header {
            text "Pam "
            Text(color: "blue") { "Taylor" }
          }
          c.meta { "Fullstack Developer, UX Researcher" }
          c.extra {
            Button(icon: "twitter", class: "circular basic icon mini")
          }
        }
      }
    }
  }
}

# ── 9. Pricing ────────────────────────────────────────────────────────
Wrapper(class: "landing-section", id: "pricing") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "Pricing" }
      Header(size: :h2) { "Get Unlimited Access" }
      Wrapper(class: "description") { "Enjoy unlimited access to all features and tools. Choose the plan that best fits your needs." }
    }

    # Pricing toggle
    TabGroup {
      Menu(secondary: true, pointing: true, style: "justify-content: center; margin-bottom: 2em;") {
        MenuItem(tab: "monthly", active: true) { "Monthly" }
        MenuItem(tab: "annually") {
          text "Annually "
          Tag(color: "green", size: "mini") { "Save 20%" }
        }
      }

      # Monthly pricing
      Tab(path: "monthly", active: true) {
        Grid(columns: 3, stackable: true, doubling: true, style: "max-width: 900px; margin: 0 auto;") {
          # Starter
          Column {
            Segment(class: "pricing-card") {
              Header(size: :h4) { "Starter" }
              Wrapper { Wrapper(class: "price-amount") { "$29" }; Wrapper(class: "price-period") { "per month" } }
              Text(size: "sm", color: "grey") { "Essential features for small projects" }
              Divider()
              List(relaxed: true) {
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Up to 5 pages" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Basic optimization" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Weekly reports" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Email support" }
              }
              Button(fluid: true, class: "basic", style: "margin-top: 1.5em;") { "Get Started" }
            }
          }
          # Professional (popular)
          Column {
            Segment(class: "pricing-card pricing-popular") {
              Tag(color: "blue", size: "tiny", class: "pricing-popular-label") { "Most Popular" }
              Header(size: :h4) { "Professional" }
              Wrapper { Wrapper(class: "price-amount") { "$79" }; Wrapper(class: "price-period") { "per month" } }
              Text(size: "sm", color: "grey") { "Advanced tools for growing businesses" }
              Divider()
              List(relaxed: true) {
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Up to 25 pages" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Advanced optimization" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Daily reports" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Priority email support" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "SEO recommendations" }
              }
              Button(color: "blue", fluid: true, style: "margin-top: 1.5em;") { "Get Started" }
            }
          }
          # Enterprise
          Column {
            Segment(class: "pricing-card") {
              Header(size: :h4) { "Enterprise" }
              Wrapper { Wrapper(class: "price-amount") { "$199" }; Wrapper(class: "price-period") { "per month" } }
              Text(size: "sm", color: "grey") { "Complete solution for large organizations" }
              Divider()
              List(relaxed: true) {
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Unlimited pages" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Custom optimization rules" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Real-time monitoring" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "24/7 phone & email support" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Advanced API access" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Custom integrations" }
              }
              Button(fluid: true, class: "basic", style: "margin-top: 1.5em;") { "Get Started" }
            }
          }
        }
      }

      # Annual pricing
      Tab(path: "annually") {
        Grid(columns: 3, stackable: true, doubling: true, style: "max-width: 900px; margin: 0 auto;") {
          Column {
            Segment(class: "pricing-card") {
              Header(size: :h4) { "Starter" }
              Wrapper { Wrapper(class: "price-amount") { "$70" }; Wrapper(class: "price-period") { "per year" } }
              Text(size: "sm", color: "grey") { "Essential features for small projects" }
              Divider()
              List(relaxed: true) {
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Up to 5 pages" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Basic optimization" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Weekly reports" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Email support" }
              }
              Button(fluid: true, class: "basic", style: "margin-top: 1.5em;") { "Get Started" }
            }
          }
          Column {
            Segment(class: "pricing-card pricing-popular") {
              Tag(color: "blue", size: "tiny", class: "pricing-popular-label") { "Most Popular" }
              Header(size: :h4) { "Professional" }
              Wrapper { Wrapper(class: "price-amount") { "$190" }; Wrapper(class: "price-period") { "per year" } }
              Text(size: "sm", color: "grey") { "Advanced tools for growing businesses" }
              Divider()
              List(relaxed: true) {
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Up to 25 pages" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Advanced optimization" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Daily reports" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Priority email support" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "SEO recommendations" }
              }
              Button(color: "blue", fluid: true, style: "margin-top: 1.5em;") { "Get Started" }
            }
          }
          Column {
            Segment(class: "pricing-card") {
              Header(size: :h4) { "Enterprise" }
              Wrapper { Wrapper(class: "price-amount") { "$478" }; Wrapper(class: "price-period") { "per year" } }
              Text(size: "sm", color: "grey") { "Complete solution for large organizations" }
              Divider()
              List(relaxed: true) {
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Unlimited pages" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Custom optimization rules" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Real-time monitoring" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "24/7 phone & email support" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Advanced API access" }
                ListItem { Icon(name: "check", color: "blue", class: "feature-check"); text "Custom integrations" }
              }
              Button(fluid: true, class: "basic", style: "margin-top: 1.5em;") { "Get Started" }
            }
          }
        }
      }
    }

    # Pricing CTA
    Segment(raised: true, padded: "very", style: "margin-top: 3em; border-radius: 1em;") {
      Grid(columns: 2, stackable: true) {
        Column {
          Header(size: :h3) { "Ready to Transform Your Website?" }
          Text(color: "grey") { "Join thousands of satisfied customers who have boosted their online performance with our AI-powered platform." }
          Wrapper(style: "margin-top: 1.5em; display: flex; gap: 0.75em; flex-wrap: wrap;") {
            Button(class: "basic") { "Schedule a Demo" }
            Button(color: "blue") { text "Start Free Trial "; Icon(name: "chevron right") }
          }
        }
        Column(aligned: "center") {
          Image(src: "/images/cosmic/hero.png", size: "large")
        }
      }
    }
  }
}

# ── 10. Community ─────────────────────────────────────────────────────
Wrapper(class: "landing-section") {
  Container {
    Card(centered: true, fluid: true, class: "community-card") { |c|
      c.header {
        Icon(name: "discord", size: "huge", color: "violet")
        Header(size: :h2, style: "margin-top: 0.5em;") {
          text "Ready to join this "
          Text(color: "blue") { "Community?" }
        }
      }
      c.description {
        Text(size: "lg", color: "grey") { "Join our vibrant Discord community! Connect, share, and grow with fellow developers and enthusiasts." }
      }
      c.extra {
        Button(color: "blue", size: "large", href: "https://discord.com/") { "Click to dive in!" }
      }
    }
  }
}

# ── 11. Contact ───────────────────────────────────────────────────────
Wrapper(class: "landing-section", id: "contact") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "Contact" }
      Header(size: :h2) { "Get Connected With Us" }
      Wrapper(class: "description") { "Stay in touch with us for updates, support, and collaboration opportunities." }
    }

    Grid(columns: 2, stackable: true) {
      # Left — contact info
      Column {
        Wrapper(class: "contact-info-card") {
          Icon(name: "building", size: "large", color: "blue")
          Wrapper {
            Text(weight: "semibold") { "Location:" }
            Text(size: "sm", color: "grey") { "123 Maple Lane, Springfield, IL 62704" }
          }
        }
        Wrapper(class: "contact-info-card") {
          Icon(name: "phone", size: "large", color: "blue")
          Wrapper {
            Text(weight: "semibold") { "Call us:" }
            Text(size: "sm", color: "grey") { "+1 (555) 987-6543" }
          }
        }
        Wrapper(class: "contact-info-card") {
          Icon(name: "mail", size: "large", color: "blue")
          Wrapper {
            Text(weight: "semibold") { "Email us:" }
            Text(size: "sm", color: "grey") { "contact@ourcompany.com" }
          }
        }
        Wrapper(class: "contact-info-card") {
          Icon(name: "clock", size: "large", color: "blue")
          Wrapper {
            Text(weight: "semibold") { "Business Hours:" }
            Text(size: "sm", color: "grey") { "Tuesday to Saturday, 9 AM - 5 PM" }
          }
        }
      }

      # Right — contact form
      Column {
        Segment {
          Header(size: :h3, style: "margin-top: 0;") { "Send Message" }
          Form(size: "large") {
            Wrapper(class: "two fields") {
              Input(placeholder: "First name", name: "first_name", label: "First Name")
              Input(placeholder: "Last name", name: "last_name", label: "Last Name")
            }
            Input(placeholder: "you@example.com", name: "email", label: "Email", input_type: "email")
            Dropdown(selection: true, placeholder: "Select a subject", name: "subject", fluid: true) {
              MenuItem(value: "web") { "Web Development" }
              MenuItem(value: "mobile") { "Mobile Development" }
              MenuItem(value: "design") { "Figma Design" }
              MenuItem(value: "api") { "REST API" }
              MenuItem(value: "fullstack") { "FullStack Project" }
            }
            Wrapper(class: "field", style: "margin-top: 1em;") {
              text '<label>Message</label>'.html_safe
              text '<textarea rows="5" placeholder="Your message..." style="resize: none;"></textarea>'.html_safe
            }
            Button(color: "blue", size: "large", fluid: true, style: "margin-top: 1em;") { "Send Message" }
          }
        }
      }
    }
  }
}

# ── 12. FAQ ───────────────────────────────────────────────────────────
Wrapper(class: "landing-section") {
  Container {
    Wrapper(class: "section-header") {
      Wrapper(class: "subtitle") { "FAQs" }
      Header(size: :h2) { "Common Questions" }
    }

    Wrapper(style: "max-width: 600px; margin: 0 auto;") {
      Accordion(styled: true, fluid: true) {
        AccordionItem { |c|
          c.title { "How does the free trial work?" }
          c.content { "Our free trial gives you full access to all features for 14 days. No credit card required. After the trial ends, you can choose a plan that suits your needs." }
        }
        AccordionItem { |c|
          c.title { "Can I change my plan later?" }
          c.content { "Absolutely! You can upgrade or downgrade your plan at any time. Changes will be reflected in your next billing cycle." }
        }
        AccordionItem { |c|
          c.title { "Is customer support available 24/7?" }
          c.content { "Yes, our Enterprise plan includes 24/7 phone and email support. Other plans include email support during business hours." }
        }
        AccordionItem { |c|
          c.title { "How secure is my data?" }
          c.content { "We take security seriously. All data is encrypted at rest and in transit. We comply with SOC 2 Type II, GDPR, and HIPAA standards." }
        }
        AccordionItem { |c|
          c.title { "Do you offer custom plans for businesses?" }
          c.content { "Yes, we offer custom enterprise plans tailored to your specific requirements. Contact our sales team to discuss your needs." }
        }
        AccordionItem { |c|
          c.title { "What payment methods do you accept?" }
          c.content { "We accept all major credit cards (Visa, Mastercard, American Express), PayPal, and bank transfers for annual plans." }
        }
      }
    }
  }
}

# ── 13. Newsletter ────────────────────────────────────────────────────
Wrapper(class: "landing-section") {
  Container {
    Wrapper(class: "section-header") {
      Header(size: :h2) {
        text "Join Our Daily "
        Text(color: "blue") { "Newsletter" }
      }
      Wrapper(class: "description") { "Subscribe to receive the latest updates, tips, and exclusive offers delivered straight to your inbox." }
    }

    Wrapper(style: "max-width: 450px; margin: 0 auto;") {
      Form {
        Input(placeholder: "you@example.com", name: "email", input_type: "email", action: true, fluid: true) {
          Button(color: "blue") { "Subscribe" }
        }
      }
    }
  }
}

# ── 14. Footer ────────────────────────────────────────────────────────
Wrapper(class: "landing-section", style: "padding-bottom: 2em;") {
  Container {
    Wrapper(class: "landing-footer") {
      Grid(columns: 4, stackable: true, doubling: true) {
        Column(width: 6) {
          Header(size: :h4) {
            Icon(name: "sun", color: "blue")
            text " Cosmic"
          }
          Text(size: "sm", color: "grey") { "Building the future of web optimization with AI-powered tools and real-time analytics." }
        }
        Column(width: 3) {
          Header(size: :h5) { "Contact" }
          Wrapper(class: "footer-links") {
            LinkTo(href: "#") { "Github" }
            LinkTo(href: "#") { "Twitter" }
            LinkTo(href: "#") { "Instagram" }
          }
        }
        Column(width: 3) {
          Header(size: :h5) { "Platforms" }
          Wrapper(class: "footer-links") {
            LinkTo(href: "#") { "iOS" }
            LinkTo(href: "#") { "Android" }
            LinkTo(href: "#") { "Web" }
          }
        }
        Column(width: 4) {
          Header(size: :h5) { "Help" }
          Wrapper(class: "footer-links") {
            LinkTo(href: "#") { "Contact Us" }
            LinkTo(href: "#") { "FAQ" }
            LinkTo(href: "#") { "Feedback" }
          }
        }
      }

      Divider(section: true)

      Wrapper(class: "footer-bottom") {
        Text(size: "sm", color: "grey") { "&copy; 2026 | Bundui." }
        Wrapper(class: "footer-socials") {
          Button(icon: "facebook", class: "circular basic icon mini")
          Button(icon: "twitter", class: "circular basic icon mini")
          Button(icon: "dribbble", class: "circular basic icon mini")
          Button(icon: "linkedin", class: "circular basic icon mini")
        }
      }
    }
  }
}
