Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step { "Shipping" }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step {
      text "Shipping"
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info", title: "Confirm Order")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, stackable: true) {
    Step(title: "Shipping", description: "Choose your shipping options")
    Step(active: true, title: "Billing", description: "Enter billing information")
    Step(disabled: true, title: "Confirm Order")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(ordered: true) {
    Step(completed: true, title: "Shipping", description: "Choose your shipping options")
    Step(completed: true, title: "Billing", description: "Enter billing information")
    Step(active: true, title: "Confirm", description: "Verify order details")
    Step(title: "Transfer", description: "Package on its way")
    Step(title: "Delivered", description: "Package received")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, ordered: true, stackable: true) {
    Step(completed: true, title: "Shipping", description: "Choose your shipping options")
    Step(completed: true, title: "Billing", description: "Enter billing information")
    Step(active: true, title: "Confirm", description: "Verify order details")
    Step(title: "Transfer", description: "Package on its way")
    Step(title: "Delivered", description: "Package received")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(vertical: true) {
    Step(completed: true, icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(completed: true, icon: "credit card", title: "Billing", description: "Enter billing information")
    Step(active: true, icon: "info", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(vertical: true, class: "right") {
    Step(completed: true, icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(completed: true, icon: "credit card", title: "Billing", description: "Enter billing information")
    Step(active: true, icon: "info", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, vertical: true) {
    Step(completed: true, title: "Shipping", description: "Choose your shipping options")
    Step(completed: true, title: "Billing", description: "Enter billing information")
    Step(active: true, title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(title: "Shipping", description: "Choose your shipping options")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(title: "Shipping", description: "Choose your shipping options")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(title: "Shipping")
    Step(title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(title: "Shipping", description: "Choose your shipping options")
    Step(title: "Billing", description: "Enter billing information")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(active: true, href: "#", icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(href: "#", title: "Billing", description: "Enter billing information")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options", class: "link")
    Step(title: "Billing", description: "Enter billing information", class: "link")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options", class: "link")
    Step(title: "Billing", description: "Enter billing information", class: "link")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(active: true, title: "Billing", description: "Enter billing information")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(completed: true, icon: "payment", title: "Billing", description: "Enter billing information")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(completed: true, title: "Billing", description: "Enter billing information")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup {
    Step(disabled: true) { "Billing" }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(disabled: true, title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(stackable: true, class: "tablet") {
    Step(icon: "plane", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "dollar", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info circle", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(stackable: true, circular: true, vertical: true) {
    Step(icon: "plane", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "dollar", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info circle", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  Grid(columns: 2) {
    Column {
      StepGroup(fluid: true, vertical: true) {
        Step(completed: true, icon: "truck", title: "Shipping", description: "Choose your shipping options")
        Step(active: true, icon: "dollar", title: "Billing", description: "Enter billing information")
      }
    }
    Column {
      Paragraph { "The steps take up the entire column width" }
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(unstackable: true) {
    Step(icon: "plane", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "dollar", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info circle", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(attached: "top", size: "three") {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info", title: "Confirm Order", description: "Verify order details")
  }
  Segment(attached: true) {
    Paragraph { "" }
  }
  StepGroup(attached: "bottom", size: "three") {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "three") {
    Step(icon: "truck", title: "Shipping")
    Step(active: true, icon: "payment", title: "Billing")
    Step(disabled: true, icon: "info", title: "Confirm Order")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "two") {
    Step(active: true, icon: "payment", title: "Billing")
    Step(disabled: true, icon: "info", title: "Confirm Order")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true) {
    Step(completed: true, icon: "truck", title: "Shipping")
    Step(active: true, icon: "payment", title: "Billing")
    Step(disabled: true, icon: "info", title: "Confirm Order")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "mini") {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "mini", circular: true) {
    Step(title: "Shipping", description: "Choose your shipping options")
    Step(active: true, title: "Billing", description: "Enter billing information")
    Step(disabled: true, title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "tiny") {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "tiny", circular: true) {
    Step(title: "Shipping", description: "Choose your shipping options")
    Step(active: true, title: "Billing", description: "Enter billing information")
    Step(disabled: true, title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "small") {
    Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
    Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
    Step(disabled: true, icon: "info", title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "small", circular: true) {
    Step(title: "Shipping", description: "Choose your shipping options")
    Step(active: true, title: "Billing", description: "Enter billing information")
    Step(disabled: true, title: "Confirm Order", description: "Verify order details")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "large") {
    Step(icon: "truck", title: "Shipping")
    Step(active: true, icon: "payment", title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "large", circular: true) {
    Step(title: "Shipping")
    Step(active: true, title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "big") {
    Step(icon: "truck", title: "Shipping")
    Step(active: true, icon: "payment", title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "big", circular: true) {
    Step(title: "Shipping")
    Step(active: true, title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "huge") {
    Step(icon: "truck", title: "Shipping")
    Step(active: true, icon: "payment", title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "huge", circular: true) {
    Step(title: "Shipping")
    Step(active: true, title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "massive") {
    Step(icon: "truck", title: "Shipping")
    Step(active: true, icon: "payment", title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(size: "massive", circular: true, stackable: true, vertical: true) {
    Step(title: "Shipping")
    Step(active: true, title: "Billing")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    StepGroup(class: "inverted") {
      Step(icon: "truck", title: "Shipping", description: "Choose your shipping options")
      Step(active: true, icon: "payment", title: "Billing", description: "Enter billing information")
      Step(disabled: true, icon: "info", title: "Confirm Order")
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    StepGroup(circular: true, stackable: true, vertical: true, class: "inverted") {
      Step(title: "Shipping", description: "Choose your shipping options")
      Step(active: true, title: "Billing", description: "Enter billing information")
      Step(disabled: true, title: "Confirm Order")
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    StepGroup(ordered: true, class: "inverted") {
      Step(completed: true, title: "Shipping", description: "Choose your shipping options")
      Step(completed: true, title: "Billing", description: "Enter billing information")
      Step(active: true, title: "Confirm", description: "Verify order details")
      Step(title: "Transfer", description: "Package on its way")
      Step(title: "Delivered", description: "Package received")
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    StepGroup(ordered: true, circular: true, stackable: true, vertical: true, class: "inverted") {
      Step(completed: true, title: "Shipping", description: "Choose your shipping options")
      Step(completed: true, title: "Billing", description: "Enter billing information")
      Step(active: true, title: "Confirm", description: "Verify order details")
      Step(title: "Transfer", description: "Package on its way")
      Step(title: "Delivered", description: "Package received")
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    StepGroup(vertical: true, class: "inverted") {
      Step(completed: true, icon: "truck", title: "Shipping", description: "Choose your shipping options")
      Step(completed: true, icon: "credit card", title: "Billing", description: "Enter billing information")
      Step(active: true, icon: "info", title: "Confirm Order", description: "Verify order details")
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    StepGroup(vertical: true, circular: true, class: "inverted") {
      Step(completed: true, title: "Shipping", description: "Choose your shipping options")
      Step(completed: true, title: "Billing", description: "Enter billing information")
      Step(active: true, title: "Confirm Order", description: "Verify order details")
    }
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, ordered: true, stackable: true, vertical: true, size: "small", class: "primary") {
    Step(completed: true, title: "Completed")
    Step(completed: true, active: true, title: "Completed...", description: "...and active")
    Step(completed: true, active: true, disabled: true, title: "Completed...", description: "...and active ... and disabled")
    Step(active: true, title: "Active")
    Step(title: "Default")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, ordered: true, stackable: true, vertical: true, size: "small", class: "secondary") {
    Step(completed: true, title: "Completed")
    Step(completed: true, active: true, title: "Completed...", description: "...and active")
    Step(completed: true, active: true, disabled: true, title: "Completed...", description: "...and active ... and disabled")
    Step(active: true, title: "Active")
    Step(title: "Default")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, ordered: true, stackable: true, vertical: true, size: "small", class: "red") {
    Step(completed: true, title: "Completed")
    Step(completed: true, active: true, title: "Completed...", description: "...and active")
    Step(completed: true, active: true, disabled: true, title: "Completed...", description: "...and active ... and disabled")
    Step(active: true, title: "Active")
    Step(title: "Default")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, ordered: true, stackable: true, vertical: true, size: "small", class: "orange") {
    Step(completed: true, title: "Completed")
    Step(completed: true, active: true, title: "Completed...", description: "...and active")
    Step(completed: true, active: true, disabled: true, title: "Completed...", description: "...and active ... and disabled")
    Step(active: true, title: "Active")
    Step(title: "Default")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, ordered: true, stackable: true, vertical: true, size: "small", class: "yellow") {
    Step(completed: true, title: "Completed")
    Step(completed: true, active: true, title: "Completed...", description: "...and active")
    Step(completed: true, active: true, disabled: true, title: "Completed...", description: "...and active ... and disabled")
    Step(active: true, title: "Active")
    Step(title: "Default")
  }
}

Header { "Step" }
Wrapper(style: "contain: layout style;") {
  StepGroup(circular: true, ordered: true, class: "red") {
    Step(completed: true)
    Step(completed: true, class: "orange")
    Step(active: true, class: "yellow")
    Step(class: "olive")
    Step(class: "green")
  }
  StepGroup(circular: true, ordered: true) {
    Step(completed: true, class: "teal")
    Step(completed: true, class: "blue")
    Step(active: true, class: "violet")
    Step(class: "purple")
    Step(class: "pink")
  }
}
