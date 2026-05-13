import { Controller } from "@hotwired/stimulus"
import "emoji-picker-element"

// Fomantic-UI Emoji Picker — click-to-pick emoji input.
//
// Usage:
//   <div data-controller="fui-emoji-picker">
//     <input data-fui-emoji-picker-target="input" type="hidden" name="icon" />
//     <button data-fui-emoji-picker-target="preview" data-action="click->fui-emoji-picker#toggle" type="button">
//       Pick emoji
//     </button>
//     <div data-fui-emoji-picker-target="dropdown" style="display:none; position:absolute; z-index:1000;">
//       <!-- emoji-picker is appended here -->
//     </div>
//   </div>

export default class extends Controller {
  static targets = ["input", "preview", "dropdown"]

  connect() {
    this.picker = document.createElement("emoji-picker")
    this.dropdownTarget.appendChild(this.picker)

    this.picker.addEventListener("emoji-click", (e) => {
      this.inputTarget.value = e.detail.unicode
      this.previewTarget.textContent = e.detail.unicode
      this.close()
    })

    this._outsideClick = (e) => {
      if (this.isOpen && !this.element.contains(e.target)) {
        this.close()
      }
    }
    document.addEventListener("click", this._outsideClick)
  }

  disconnect() {
    document.removeEventListener("click", this._outsideClick)
    if (this.picker) {
      this.picker.remove()
      this.picker = null
    }
  }

  toggle(e) {
    e.preventDefault()
    e.stopPropagation()
    this.isOpen ? this.close() : this.open()
  }

  open() {
    this.dropdownTarget.style.display = "block"
    this.isOpen = true
  }

  close() {
    this.dropdownTarget.style.display = "none"
    this.isOpen = false
  }
}
