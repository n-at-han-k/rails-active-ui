# ─── Types ───

Header { "Accordion" }
Wrapper(style: "contain: layout style;") {
  Accordion {
    AccordionItem(active: true) { |i|
      i.title { "What is a dog?" }
      i.content {
        Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
      }
    }
    AccordionItem { |i|
      i.title { "What kinds of dogs are there?" }
      i.content {
        Paragraph { "There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they find to be compatible with their own lifestyle and desires from a companion." }
      }
    }
    AccordionItem { |i|
      i.title { "How do you acquire a dog?" }
      i.content {
        Paragraph { "Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters." }
        Paragraph { "A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good home to a dog who may not find one so readily." }
      }
    }
  }
}

Header { "Styled" }
Wrapper(style: "contain: layout style;") {
  Accordion(styled: true) {
    AccordionItem(active: true) { |i|
      i.title { "What is a dog?" }
      i.content {
        Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
      }
    }
    AccordionItem { |i|
      i.title { "What kinds of dogs are there?" }
      i.content {
        Paragraph { "There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they find to be compatible with their own lifestyle and desires from a companion." }
      }
    }
    AccordionItem { |i|
      i.title { "How do you acquire a dog?" }
      i.content {
        Paragraph { "Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters." }
        Paragraph { "A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good home to a dog who may not find one so readily." }
      }
    }
  }
}

Header { "Basic Styled" }
Wrapper(style: "contain: layout style;") {
  Accordion(basic: true, styled: true) {
    AccordionItem(active: true) { |i|
      i.title { "What is a dog?" }
      i.content {
        Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
      }
    }
    AccordionItem { |i|
      i.title { "What kinds of dogs are there?" }
      i.content {
        Paragraph { "There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they find to be compatible with their own lifestyle and desires from a companion." }
      }
    }
    AccordionItem { |i|
      i.title { "How do you acquire a dog?" }
      i.content {
        Paragraph { "Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters." }
        Paragraph { "A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good home to a dog who may not find one so readily." }
      }
    }
  }
}

Header { "Tree" }
Wrapper(style: "contain: layout style;") {
  Accordion(tree: true) {
    AccordionItem(active: true) { |i|
      i.title { "Level 1" }
      i.content {
        SubAccordion {
          AccordionItem(active: true) { |i2|
            i2.title { "Level 1A" }
            i2.content {
              SubAccordion {
                AccordionItem { |i3|
                  i3.title { "Level 1A-A" }
                  i3.content { "Level 1A-A Contents" }
                }
                AccordionItem { |i3|
                  i3.title { "Level 1A-B" }
                  i3.content { "Level 1A-B Contents" }
                }
              }
            }
          }
          AccordionItem { |i2|
            i2.title { "Level 1B" }
            i2.content { "Level 1B Contents" }
          }
          AccordionItem { |i2|
            i2.title { "Level 1C" }
            i2.content { "Level 1C Contents" }
          }
        }
      }
    }
    AccordionItem { |i|
      i.title { "Level 2" }
      i.content {
        SubAccordion {
          AccordionItem(active: true) { |i2|
            i2.title { "Level 2A" }
            i2.content {
              SubAccordion {
                AccordionItem { |i3|
                  i3.title { "Level 2A-A" }
                  i3.content { "Level 2A-A Contents" }
                }
                AccordionItem { |i3|
                  i3.title { "Level 2A-B" }
                  i3.content { "Level 2A-B Contents" }
                }
              }
            }
          }
          AccordionItem { |i2|
            i2.title { "Level 2B" }
            i2.content { "Level 2B Contents" }
          }
          AccordionItem { |i2|
            i2.title { "Level 2C" }
            i2.content { "Level 2C Contents" }
          }
        }
      }
    }
  }
}

# ─── Variations ───

Header { "Fluid" }
Wrapper(style: "contain: layout style;") {
  Accordion(styled: true, fluid: true) {
    AccordionItem(active: true) { |i|
      i.title { "What is a dog?" }
      i.content {
        Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
      }
    }
    AccordionItem { |i|
      i.title { "What kinds of dogs are there?" }
      i.content {
        Paragraph { "There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they find to be compatible with their own lifestyle and desires from a companion." }
      }
    }
    AccordionItem { |i|
      i.title { "How do you acquire a dog?" }
      i.content {
        Paragraph { "Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters." }
        Paragraph { "A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good home to a dog who may not find one so readily." }
      }
    }
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Segment(inverted: true) {
    Accordion(inverted: true) {
      AccordionItem(active: true) { |i|
        i.title { "What is a dog?" }
        i.content {
          Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
        }
      }
      AccordionItem { |i|
        i.title { "What kinds of dogs are there?" }
        i.content {
          Paragraph { "There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they find to be compatible with their own lifestyle and desires from a companion." }
        }
      }
      AccordionItem { |i|
        i.title { "How do you acquire a dog?" }
        i.content {
          Paragraph { "Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters." }
          Paragraph { "A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good home to a dog who may not find one so readily." }
        }
      }
    }
  }
}

Header { "Compact" }
Wrapper(style: "contain: layout style;") {
  Segment {
    Accordion(compact: true) {
      AccordionItem(active: true) { |i|
        i.title { "What is a dog?" }
        i.content {
          Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
        }
      }
      AccordionItem { |i|
        i.title { "What kinds of dogs are there?" }
        i.content {
          Paragraph { "There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they find to be compatible with their own lifestyle and desires from a companion." }
        }
      }
      AccordionItem { |i|
        i.title { "How do you acquire a dog?" }
        i.content {
          Paragraph { "Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters." }
          Paragraph { "A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good home to a dog who may not find one so readily." }
        }
      }
    }
  }
}

Header { "Very Compact" }
Wrapper(style: "contain: layout style;") {
  Segment {
    Accordion(very_compact: true) {
      AccordionItem(active: true) { |i|
        i.title { "What is a dog?" }
        i.content {
          Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
        }
      }
      AccordionItem { |i|
        i.title { "What kinds of dogs are there?" }
        i.content {
          Paragraph { "There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they find to be compatible with their own lifestyle and desires from a companion." }
        }
      }
      AccordionItem { |i|
        i.title { "How do you acquire a dog?" }
        i.content {
          Paragraph { "Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters." }
          Paragraph { "A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good home to a dog who may not find one so readily." }
        }
      }
    }
  }
}

# ─── Examples ───

Header { "Nested Accordions" }
Wrapper(style: "contain: layout style;") {
  Accordion(styled: true) {
    AccordionItem(active: true) { |i|
      i.title { "Level 1" }
      i.content {
        text "Welcome to level 1"
        SubAccordion {
          AccordionItem(active: true) { |i2|
            i2.title { "Level 1A" }
            i2.content {
              Paragraph { "Level 1A Contents" }
              SubAccordion {
                AccordionItem { |i3|
                  i3.title { "Level 1A-A" }
                  i3.content { "Level 1A-A Contents" }
                }
                AccordionItem { |i3|
                  i3.title { "Level 1A-B" }
                  i3.content { "Level 1A-B Contents" }
                }
              }
            }
          }
          AccordionItem { |i2|
            i2.title { "Level 1B" }
            i2.content { "Level 1B Contents" }
          }
          AccordionItem { |i2|
            i2.title { "Level 1C" }
            i2.content { "Level 1C Contents" }
          }
        }
      }
    }
    AccordionItem { |i|
      i.title { "Level 2" }
      i.content {
        Paragraph { "Welcome to level 2" }
        SubAccordion {
          AccordionItem(active: true) { |i2|
            i2.title { "Level 2A" }
            i2.content {
              Paragraph { "Level 2A Contents" }
              SubAccordion {
                AccordionItem { |i3|
                  i3.title { "Level 2A-A" }
                  i3.content { "Level 2A-A Contents" }
                }
                AccordionItem { |i3|
                  i3.title { "Level 2A-B" }
                  i3.content { "Level 2A-B Contents" }
                }
              }
            }
          }
          AccordionItem { |i2|
            i2.title { "Level 2B" }
            i2.content { "Level 2B Contents" }
          }
          AccordionItem { |i2|
            i2.title { "Level 2C" }
            i2.content { "Level 2C Contents" }
          }
        }
      }
    }
  }
}

Header { "Form Fields" }
Wrapper(style: "contain: layout style;") {
  Segment {
    Form(url: "#", class: "fluid") {
      FieldsGroup(class: "two") {
        TextField(:first_name, placeholder: "First Name", field: true)
        TextField(:last_name, placeholder: "Last Name", field: true)
      }
      Accordion(class: "field") {
        AccordionItem(icon: "dropdown") { |i|
          i.title { "Optional Details" }
          i.content {
            TextField(:maiden_name, placeholder: "Maiden Name", field: true)
          }
        }
      }
      Button(class: "secondary submit") { "Sign Up" }
    }
  }
}

Header { "Accordion Menu" }
Wrapper(style: "contain: layout style;") {
  Menu(class: "vertical accordion") {
    MenuItem {
      AccordionItem(active: true) { |i|
        i.title { "Size" }
        i.content {
          Form(url: "#") {
            FieldsGroup(class: "grouped") {
              RadioButton(:size, "small", label: "Small")
              RadioButton(:size, "medium", label: "Medium")
              RadioButton(:size, "large", label: "Large")
              RadioButton(:size, "x-large", label: "X-Large")
            }
          }
        }
      }
    }
    MenuItem {
      AccordionItem { |i|
        i.title { "Colors" }
        i.content {
          Form(url: "#") {
            FieldsGroup(class: "grouped") {
              CheckBox(:red, label: "Red")
              CheckBox(:orange, label: "Orange")
              CheckBox(:green, label: "Green")
              CheckBox(:blue, label: "Blue")
            }
          }
        }
      }
    }
  }
}

Header { "Right Icon" }
Wrapper(style: "contain: layout style;") {
  Message(color: "blue", compact: true) {
    Accordion(basic: true, styled: true) {
      AccordionItem(active: true, icon: "right dropdown") { |i|
        i.title { "What is a dog?" }
        i.content {
          Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
        }
      }
    }
  }
}

# ─── Usage ───

Header { "Without Javascript" }
Wrapper(style: "contain: layout style;") {
  text '<details class="ui accordion">'.html_safe
  text '<summary class="title"><i class="dropdown icon"></i> What is a dog?</summary>'.html_safe
  text '<div class="content">'.html_safe
  Paragraph { "A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in many households across the world." }
  text '</div>'.html_safe
  text '</details>'.html_safe
}
