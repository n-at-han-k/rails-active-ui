# ------------------------------------------------------------------
# Reset
# ------------------------------------------------------------------
Header(size: :h3) { text "Reset" }
text "A no-op marker rendered as an HTML comment. Used for resetting component state."

Segment {
  Reset()
  text "(Reset renders an invisible HTML comment)"
}

Segment(secondary: true) {
  concat tag.pre { tag.code('Reset()') }
}

Divider(hidden: true)

# ------------------------------------------------------------------
# Site
# ------------------------------------------------------------------
Header(size: :h3) { text "Site" }
text "Wraps content with the fui-site Stimulus controller for global Fomantic UI initialization."

Segment {
  Site {
    text "Content inside a Site wrapper"
  }
}

Segment(secondary: true) {
  concat tag.pre { tag.code(
    'Site {
  text "Content inside a Site wrapper"
}'
  )}
}
