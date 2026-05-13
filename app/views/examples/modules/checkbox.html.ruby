Header { "Checkbox" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:example, label: "Make my profile visible")
  }
}

Header { "Radio" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    RadioButton(:radio, "choice", label: "Radio choice")
  }
}

Header { "Radio" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    FieldsGroup(inline: true) {
      RadioButton(:frequency, "once_week", label: "Once a week")
      RadioButton(:frequency, "two_three", label: "2-3 times a week")
      RadioButton(:frequency, "once_day", label: "Once a day")
      RadioButton(:frequency, "twice_day", label: "Twice a day")
    }
  }
}

Header { "Radio Grouped" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    FieldsGroup(class: "grouped") {
      RadioButton(:example2, "once_week", label: "Once a week")
      RadioButton(:example2, "two_three", label: "2-3 times a week")
      RadioButton(:example2, "once_day", label: "Once a day")
      RadioButton(:example2, "twice_day", label: "Twice a day")
    }
  }
}

Header { "Slider" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:newsletter, label: "Accept terms and conditions", kind: :slider)
  }
}

Header { "Slider Radio" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    FieldsGroup(class: "grouped") {
      RadioButton(:throughput, "20mbps", label: "20 mbps max", kind: :slider)
      RadioButton(:throughput, "10mbps", label: "10mbps max", kind: :slider)
      RadioButton(:throughput, "5mbps", label: "5mbps max", kind: :slider)
      RadioButton(:throughput, "unmetered", label: "Unmetered", kind: :slider)
    }
  }
}

Header { "Toggle" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:public, label: "Subscribe to weekly newsletter", kind: :toggle)
  }
}

Header { "Read-only" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:readonly_example, label: "Read Only", readonly: true)
  }
}

Header { "Checked" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:active_example, label: "Active")
  }
}

Header { "Disabled" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:disabled_example, label: "Disabled", disabled: true)
    CheckBox(:disabled_toggle, label: "Disabled", kind: :toggle, disabled: true)
  }
}

Header { "Fitted" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    Segment(class: "left floated compact") {
      CheckBox(:fitted1, label: "", fitted: true)
    }
    Segment(class: "left floated compact") {
      CheckBox(:fitted2, label: "", kind: :slider, fitted: true)
    }
    Segment(class: "left floated compact") {
      CheckBox(:fitted3, label: "", kind: :toggle, fitted: true)
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    Segment(compact: true, inverted: true) {
      CheckBox(:inv1, label: "Inverted", inverted: true)
    }
    Segment(compact: true, inverted: true) {
      CheckBox(:inv2, label: "Inverted", kind: :slider, inverted: true)
    }
    Segment(compact: true, inverted: true) {
      CheckBox(:inv3, label: "Inverted", kind: :toggle, inverted: true)
    }
  }
}

Header { "Right Aligned" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    FieldsGroup(class: "grouped") {
      CheckBox(:ra1, label: "Checkbox", right_aligned: true)
      RadioButton(:ra2, "yes", label: "Radio", right_aligned: true)
      CheckBox(:ra3, label: "Slider", kind: :slider, right_aligned: true)
      CheckBox(:ra4, label: "Toggle", kind: :toggle, right_aligned: true)
    }
  }
}

Header { "Mini" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:mini1, label: "Checkbox", size: "mini")
    RadioButton(:mini2, "yes", label: "Radio", size: "mini")
    CheckBox(:mini3, label: "Toggle", kind: :toggle, size: "mini")
    CheckBox(:mini4, label: "Slider", kind: :slider, size: "mini")
  }
}

Header { "Tiny" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:tiny1, label: "Checkbox", size: "tiny")
    RadioButton(:tiny2, "yes", label: "Radio", size: "tiny")
    CheckBox(:tiny3, label: "Toggle", kind: :toggle, size: "tiny")
    CheckBox(:tiny4, label: "Slider", kind: :slider, size: "tiny")
  }
}

Header { "Small" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:small1, label: "Checkbox", size: "small")
    RadioButton(:small2, "yes", label: "Radio", size: "small")
    CheckBox(:small3, label: "Toggle", kind: :toggle, size: "small")
    CheckBox(:small4, label: "Slider", kind: :slider, size: "small")
  }
}

Header { "Large" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:large1, label: "Checkbox", size: "large")
    RadioButton(:large2, "yes", label: "Radio", size: "large")
    CheckBox(:large3, label: "Toggle", kind: :toggle, size: "large")
    CheckBox(:large4, label: "Slider", kind: :slider, size: "large")
  }
}

Header { "Big" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:big1, label: "Checkbox", size: "big")
    RadioButton(:big2, "yes", label: "Radio", size: "big")
    CheckBox(:big3, label: "Toggle", kind: :toggle, size: "big")
    CheckBox(:big4, label: "Slider", kind: :slider, size: "big")
  }
}

Header { "Huge" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:huge1, label: "Checkbox", size: "huge")
    RadioButton(:huge2, "yes", label: "Radio", size: "huge")
    CheckBox(:huge3, label: "Toggle", kind: :toggle, size: "huge")
    CheckBox(:huge4, label: "Slider", kind: :slider, size: "huge")
  }
}

Header { "Massive" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    CheckBox(:massive1, label: "Checkbox", size: "massive")
    RadioButton(:massive2, "yes", label: "Radio", size: "massive")
    CheckBox(:massive3, label: "Toggle", kind: :toggle, size: "massive")
    CheckBox(:massive4, label: "Slider", kind: :slider, size: "massive")
  }
}
