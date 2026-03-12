import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Popup — tooltips and popup content.
// Replaces: $.fn.popup
//
// Usage:
//   <span data-controller="fui-popup"
//         data-fui-popup-content-value="Tooltip text"
//         data-fui-popup-position-value="top center"
//         data-action="mouseenter->fui-popup#show mouseleave->fui-popup#hide">
//     Hover me
//   </span>
//
//   <!-- Or with an explicit popup target: -->
//   <span data-controller="fui-popup"
//         data-action="click->fui-popup#toggle">
//     Click me
//     <div class="ui popup" data-fui-popup-target="popup">
//       <p>Rich popup content</p>
//     </div>
//   </span>
//
export default class extends Controller {
  static targets = ["popup"]
  static values = {
    content:   { type: String, default: "" },
    title:     { type: String, default: "" },
    html:      { type: String, default: "" },
    position:  { type: String, default: "top center" },
    on:        { type: String, default: "hover" },
    hoverable: { type: Boolean, default: false },
    closable:  { type: Boolean, default: true },
    variation: { type: String, default: "" },
  }

  connect() {}

  disconnect() {
    this._removeCreatedPopup()
  }

  show() {
    const popup = this._getOrCreatePopup()
    if (!popup) return

    popup.classList.add("visible")
    this.dispatch("show")
  }

  hide() {
    const popup = this._getOrCreatePopup()
    if (!popup) return

    if (this.hoverableValue) {
      this._hideTimer = setTimeout(() => {
        popup.classList.remove("visible")
        this.dispatch("hide")
      }, 70)
    } else {
      popup.classList.remove("visible")
      this.dispatch("hide")
    }
  }

  toggle() {
    const popup = this._getOrCreatePopup()
    if (!popup) return

    popup.classList.contains("visible") ? this.hide() : this.show()
  }

  cancelHide() {
    if (this._hideTimer) clearTimeout(this._hideTimer)
  }

  // -- Private --

  _getOrCreatePopup() {
    if (this.hasPopupTarget) return this.popupTarget

    if (this._createdPopup) return this._createdPopup

    const content = this.htmlValue || this.contentValue
    if (!content && !this.titleValue) return null

    const popup = document.createElement("div")
    popup.classList.add("ui", "popup")
    if (this.variationValue) {
      this.variationValue.split(" ").forEach((cls) => popup.classList.add(cls))
    }

    if (this.titleValue) {
      const header = document.createElement("div")
      header.classList.add("header")
      header.textContent = this.titleValue
      popup.appendChild(header)
    }

    if (content) {
      if (this.htmlValue) {
        popup.innerHTML += this.htmlValue
      } else {
        const contentEl = document.createElement("div")
        contentEl.classList.add("content")
        contentEl.textContent = content
        popup.appendChild(contentEl)
      }
    }

    if (this.hoverableValue) {
      popup.addEventListener("mouseenter", () => this.cancelHide())
      popup.addEventListener("mouseleave", () => this.hide())
    }

    this.element.style.position = this.element.style.position || "relative"
    this.element.appendChild(popup)
    this._createdPopup = popup
    return popup
  }

  _removeCreatedPopup() {
    if (this._createdPopup) {
      this._createdPopup.remove()
      this._createdPopup = null
    }
  }
}
