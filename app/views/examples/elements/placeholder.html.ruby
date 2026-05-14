# Types

Header { "Placeholder" }
Wrapper(style: "contain: layout style;") {
  Placeholder { |c|
    c.header(image: true) {
      c.line
      c.line
    }
    c.paragraph {
      c.line
      c.line
      c.line
      c.line
      c.line
    }
  }
}

Header { "Placeholder in Grid" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 3, class: "stackable") {
    Column {
      Segment(class: "raised") {
        Placeholder { |c|
          c.header(image: true) {
            c.line
            c.line
          }
          c.paragraph {
            c.line :medium
            c.line :short
          }
        }
      }
    }
    Column {
      Segment(class: "raised") {
        Placeholder { |c|
          c.header(image: true) {
            c.line
            c.line
          }
          c.paragraph {
            c.line :medium
            c.line :short
          }
        }
      }
    }
    Column {
      Segment(class: "raised") {
        Placeholder { |c|
          c.header(image: true) {
            c.line
            c.line
          }
          c.paragraph {
            c.line :medium
            c.line :short
          }
        }
      }
    }
  }
}

Header { "Placeholder in Cards" }
Wrapper(style: "contain: layout style;") {
  Wrapper(class: "ui three doubling stackable cards") {
    Wrapper(class: "ui card") {
      Wrapper(class: "image") {
        Placeholder { |c|
          c.image :square
        }
      }
      Wrapper(class: "content") {
        Placeholder { |c|
          c.header {
            c.line :very_short
            c.line :medium
          }
          c.paragraph {
            c.line :short
          }
        }
      }
      Wrapper(class: "extra content") {
        Button(class: "disabled primary") { "Add" }
        Button(class: "disabled") { "Delete" }
      }
    }
  }
}

# Content

Header { "Lines" }
Wrapper(style: "contain: layout style;") {
  Placeholder { |c|
    c.line
    c.line
    c.line
    c.line
    c.line
  }
}

Header { "Headers" }
Wrapper(style: "contain: layout style;") {
  Placeholder { |c|
    c.header(image: true) {
      c.line
      c.line
    }
  }
}

Header { "Header without Image" }
Wrapper(style: "contain: layout style;") {
  Placeholder { |c|
    c.header {
      c.line
      c.line
    }
  }
}

Header { "Paragraph" }
Wrapper(style: "contain: layout style;") {
  Placeholder { |c|
    c.paragraph {
      c.line
      c.line
      c.line
      c.line
      c.line
    }
    c.paragraph {
      c.line
      c.line
      c.line
    }
  }
}

Header { "Image" }
Wrapper(style: "contain: layout style;") {
  Placeholder(style: "width:150px;height:150px;") { |c|
    c.image
  }
}

Header { "Square Image" }
Wrapper(style: "contain: layout style;") {
  Wrapper(class: "ui three cards") {
    Wrapper(class: "ui card") {
      Wrapper(class: "content") {
        Placeholder { |c| c.image :square }
      }
    }
    Wrapper(class: "ui card") {
      Wrapper(class: "content") {
        Placeholder { |c| c.image :square }
      }
    }
    Wrapper(class: "ui card") {
      Wrapper(class: "content") {
        Placeholder { |c| c.image :square }
      }
    }
  }
}

Header { "Rectangular Image" }
Wrapper(style: "contain: layout style;") {
  Wrapper(class: "ui three cards") {
    Wrapper(class: "ui card") {
      Wrapper(class: "content") {
        Placeholder { |c| c.image :rectangular }
      }
    }
    Wrapper(class: "ui card") {
      Wrapper(class: "content") {
        Placeholder { |c| c.image :rectangular }
      }
    }
    Wrapper(class: "ui card") {
      Wrapper(class: "content") {
        Placeholder { |c| c.image :rectangular }
      }
    }
  }
}

# Variations

Header { "Line Length" }
Wrapper(style: "contain: layout style;") {
  Placeholder { |c|
    c.line :full
    c.line :very_long
    c.line :long
    c.line :medium
    c.line :short
    c.line :very_short
  }
}

Header { "Line Length with Header" }
Wrapper(style: "contain: layout style;") {
  Placeholder { |c|
    c.header(image: true) {
      c.line :medium
      c.line :full
    }
    c.paragraph {
      c.line :full
      c.line :medium
    }
  }
}

Header { "Fluid" }
Wrapper(style: "contain: layout style;") {
  Placeholder(fluid: true) { |c|
    c.header(image: true) {
      c.line
      c.line
    }
    c.paragraph {
      c.line
      c.line
      c.line
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Placeholder(inverted: true, class: "active") { |c|
      c.header(image: true) {
        c.line
        c.line
      }
      c.paragraph {
        c.line
        c.line
        c.line
      }
    }
  }
}
