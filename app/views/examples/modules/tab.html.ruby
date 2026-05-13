Header { "Tab" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(tabular: true, attached: "top") {
      MenuItem(tab: "tab1") { "Tab" }
    }
    Tab(path: "tab1", attached: true, segment: true) {
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
    }
  }
}

Header { "Active" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(tabular: true, attached: "top") {
      MenuItem(active: true, tab: "active1") { "Tab" }
    }
    Tab(active: true, path: "active1", attached: true, segment: true) {
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
    }
  }
}

Header { "Loading" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(tabular: true, attached: "top") {
      MenuItem(active: true, tab: "loading1") { "Tab" }
    }
    Tab(active: true, path: "loading1", attached: true, segment: true, class: "loading") {
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
    }
  }
}

Header { "Centered Item" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(tabular: true, attached: "top") {
      MenuItem(active: true, tab: "center-one") { "One" }
      MenuItem(tab: "center-two", class: "center") { "Two" }
      MenuItem(tab: "center-three") { "Three" }
    }
    Tab(active: true, path: "center-one", attached: true, segment: true) {
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
    }
    Tab(path: "center-two", attached: true, segment: true) {
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
    }
    Tab(path: "center-three", attached: true, segment: true) {
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    TabGroup {
      Menu(tabular: true, attached: "top", inverted: true) {
        MenuItem(active: true, tab: "inv-one") { "Active Tab" }
        MenuItem(tab: "inv-two") { "Tab 2" }
        MenuItem(tab: "inv-three") { "Tab 3" }
      }
      Tab(active: true, path: "inv-one", attached: true, segment: true, class: "inverted") {
        Paragraph { "content one" }
      }
      Tab(path: "inv-two", attached: true, segment: true, class: "inverted") {
        Paragraph { "content two" }
      }
      Tab(path: "inv-three", attached: true, segment: true, class: "inverted") {
        Paragraph { "content three" }
      }
    }
  }
}

Header { "Bottom Attached Menu" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    TabGroup {
      Tab(path: "bot-one", segment: true, class: "inverted top attached") {
        Paragraph { "content one" }
      }
      Tab(path: "bot-two", segment: true, class: "inverted top attached") {
        Paragraph { "content two" }
      }
      Tab(active: true, path: "bot-three", segment: true, class: "inverted top attached") {
        Paragraph { "content three" }
      }
      Menu(tabular: true, attached: "bottom", inverted: true) {
        MenuItem(tab: "bot-one") { "Active Tab" }
        MenuItem(tab: "bot-two") { "Tab 2" }
        MenuItem(active: true, tab: "bot-three") { "Tab 3" }
      }
    }
  }
}

Header { "Basic Tabs" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(tabular: true, attached: "top") {
      MenuItem(active: true, tab: "basic-first") { "First" }
      MenuItem(tab: "basic-second") { "Second" }
      MenuItem(tab: "basic-third") { "Third" }
    }
    Tab(active: true, path: "basic-first", attached: true, segment: true) {
      text "First"
    }
    Tab(path: "basic-second", attached: true, segment: true) {
      text "Second"
    }
    Tab(path: "basic-third", attached: true, segment: true) {
      text "Third"
    }
  }
}

Header { "Multiple Tab Groups" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(secondary: true) {
      MenuItem(tab: "multi-first") { "First" }
      MenuItem(active: true, tab: "multi-second") { "Second" }
      MenuItem(tab: "multi-third") { "Third" }
    }
    Tab(path: "multi-first", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(active: true, tab: "multi-first/a") { "1A" }
          MenuItem(tab: "multi-first/b") { "1B" }
          MenuItem(tab: "multi-first/c") { "1C" }
        }
        Tab(active: true, path: "multi-first/a", attached: true, segment: true) { "1A" }
        Tab(path: "multi-first/b", attached: true, segment: true) { "1B" }
        Tab(path: "multi-first/c", attached: true, segment: true) { "1C" }
      }
    }
    Tab(active: true, path: "multi-second", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(tab: "multi-second/a") { "2A" }
          MenuItem(tab: "multi-second/b") { "2B" }
          MenuItem(active: true, tab: "multi-second/c") { "2C" }
        }
        Tab(path: "multi-second/a", attached: true, segment: true) { "2A" }
        Tab(path: "multi-second/b", attached: true, segment: true) { "2B" }
        Tab(active: true, path: "multi-second/c", attached: true, segment: true) { "2C" }
      }
    }
    Tab(path: "multi-third", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(tab: "multi-third/a") { "3A" }
          MenuItem(tab: "multi-third/b") { "3B" }
          MenuItem(tab: "multi-third/c") { "3C" }
        }
        Tab(path: "multi-third/a", attached: true, segment: true) { "3A" }
        Tab(path: "multi-third/b", attached: true, segment: true) { "3B" }
        Tab(path: "multi-third/c", attached: true, segment: true) { "3C" }
      }
    }
  }
  Divider()
  TabGroup {
    Menu(secondary: true) {
      MenuItem(tab: "multi-fourth") { "Fourth" }
      MenuItem(active: true, tab: "multi-fifth") { "Fifth" }
      MenuItem(tab: "multi-sixth") { "Sixth" }
    }
    Tab(path: "multi-fourth", segment: true) { "4" }
    Tab(active: true, path: "multi-fifth", segment: true) { "5" }
    Tab(path: "multi-sixth", segment: true) { "6" }
  }
}

Header { "Default Paths" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(pointing: true, secondary: true) {
      MenuItem(active: true, tab: "default-first") { "First" }
      MenuItem(tab: "default-second") { "Second" }
      MenuItem(tab: "default-third") { "Third" }
    }
    Tab(active: true, path: "default-first", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(active: true, tab: "default-first/a") { "1A" }
          MenuItem(tab: "default-first/b") { "1B" }
          MenuItem(tab: "default-first/c") { "1C" }
        }
        Tab(active: true, path: "default-first/a", attached: true, segment: true) { "1A" }
        Tab(path: "default-first/b", attached: true, segment: true) { "1B" }
        Tab(path: "default-first/c", attached: true, segment: true) { "1C" }
      }
    }
    Tab(path: "default-second", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(tab: "default-second/a") { "2A" }
          MenuItem(tab: "default-second/b") { "2B" }
          MenuItem(tab: "default-second/c") { "2C" }
        }
        Tab(path: "default-second/a", attached: true, segment: true) { "2A" }
        Tab(path: "default-second/b", attached: true, segment: true) { "2B" }
        Tab(path: "default-second/c", attached: true, segment: true) { "2C" }
      }
    }
    Tab(path: "default-third", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(tab: "default-third/a") { "3A" }
          MenuItem(tab: "default-third/b") { "3B" }
          MenuItem(tab: "default-third/c") { "3C" }
        }
        Tab(path: "default-third/a", attached: true, segment: true) { "3A" }
        Tab(path: "default-third/b", attached: true, segment: true) { "3B" }
        Tab(path: "default-third/c", attached: true, segment: true) { "3C" }
      }
    }
  }
}

Header { "Remote Content" }
Wrapper(style: "contain: layout style;") {
  TabGroup {
    Menu(pointing: true, secondary: true) {
      MenuItem(active: true, tab: "remote-first") { "First" }
      MenuItem(tab: "remote-second") { "Second" }
      MenuItem(tab: "remote-third") { "Third" }
    }
    Tab(active: true, path: "remote-first", segment: true) {
      Header(size: :h3) { "AJAX Tab One" }
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
      Image(src: "/images/wireframe/paragraph.png", class: "wireframe")
    }
    Tab(path: "remote-second", segment: true)
    Tab(path: "remote-third", segment: true)
  }
}

Header { "History Tabs" }
Wrapper(style: "contain: layout style;") {
  TabGroup(history: true) {
    Menu(pointing: true, secondary: true) {
      MenuItem(active: true, tab: "hist-first") { "First" }
      MenuItem(tab: "hist-second") { "Second" }
      MenuItem(tab: "hist-third") { "Third" }
    }
    Tab(active: true, path: "hist-first", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(active: true, tab: "hist-first/a") { "1A" }
          MenuItem(tab: "hist-first/b") { "1B" }
          MenuItem(tab: "hist-first/c") { "1C" }
        }
        Tab(active: true, path: "hist-first/a", attached: true, segment: true) { "1A" }
        Tab(path: "hist-first/b", attached: true, segment: true) { "1B" }
        Tab(path: "hist-first/c", attached: true, segment: true) { "1C" }
      }
    }
    Tab(path: "hist-second", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(tab: "hist-second/a") { "2A" }
          MenuItem(tab: "hist-second/b") { "2B" }
          MenuItem(tab: "hist-second/c") { "2C" }
        }
        Tab(path: "hist-second/a", attached: true, segment: true) { "2A" }
        Tab(path: "hist-second/b", attached: true, segment: true) { "2B" }
        Tab(path: "hist-second/c", attached: true, segment: true) { "2C" }
      }
    }
    Tab(path: "hist-third", segment: true) {
      TabGroup {
        Menu(tabular: true, attached: "top") {
          MenuItem(tab: "hist-third/a") { "3A" }
          MenuItem(tab: "hist-third/b") { "3B" }
          MenuItem(tab: "hist-third/c") { "3C" }
        }
        Tab(path: "hist-third/a", attached: true, segment: true) { "3A" }
        Tab(path: "hist-third/b", attached: true, segment: true) { "3B" }
        Tab(path: "hist-third/c", attached: true, segment: true) { "3C" }
      }
    }
  }
}
