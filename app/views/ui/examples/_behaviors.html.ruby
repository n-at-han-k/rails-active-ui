# ------------------------------------------------------------------
# Api
# ------------------------------------------------------------------
Header(size: :h3) { text "Api" }
text "Wraps content with the fui-api Stimulus controller for making AJAX requests."

Segment {
  Api(url: "/up", method_val: "get") {
    Button(color: :blue) { text "Check Health" }
    concat tag.div(class: "ui response") { "" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Api(url: "/up", method_val: "get") {
  Button(color: :blue) { text "Check Health" }
  concat tag.div(class: "ui response") { "" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# State
# ------------------------------------------------------------------
Header(size: :h3) { text "State" }
text "Manages active/inactive states on an element, toggling text and CSS classes."

Segment {
  State(text_active: "Following", text_inactive: "Follow", class_active: "green", class_inactive: "") {
    Button(color: :blue) { text "Follow" }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'State(text_active: "Following", text_inactive: "Follow", class_active: "green", class_inactive: "") {
  Button(color: :blue) { text "Follow" }
}'
  )}
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Visibility
# ------------------------------------------------------------------
Header(size: :h3) { text "Visibility" }
text "Tracks element visibility in the viewport and fires callbacks on scroll events."

Segment {
  Visibility(once: true, offset: 50) {
    Segment { text "This element tracks its visibility in the viewport." }
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Visibility(once: true, offset: 50) {
  Segment { text "This element tracks its visibility in the viewport." }
}'
  )}
}
