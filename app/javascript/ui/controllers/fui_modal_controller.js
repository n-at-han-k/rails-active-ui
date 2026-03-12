import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Modal — dialog windows with dimmer.
// Replaces: $.fn.modal
//
// Usage:
//   <div class="ui modal" data-controller="fui-modal">
//     <i class="close icon" data-action="click->fui-modal#hide"></i>
//     <div class="header">Modal Title</div>
//     <div class="content">Content here</div>
//     <div class="actions">
//       <button class="ui approve button" data-action="click->fui-modal#approve">OK</button>
//       <button class="ui deny button" data-action="click->fui-modal#deny">Cancel</button>
//     </div>
//   </div>
//
//   <button data-action="click->fui-modal#show">Open Modal</button>
//
export default class extends Controller {
  static values = {
    closable:          { type: Boolean, default: true },
    dimPage:           { type: Boolean, default: true },
    blurring:          { type: Boolean, default: false },
    keyboardShortcuts: { type: Boolean, default: true },
    duration:          { type: Number, default: 500 },
    transition:        { type: String, default: "scale" },
    autofocus:         { type: Boolean, default: true },
  }

  connect() {
    this._onKeydown = this._handleKeydown.bind(this)
  }

  disconnect() {
    document.removeEventListener("keydown", this._onKeydown)
    this._removeDimmer()
  }

  show() {
    if (this.dimPageValue) {
      this._ensureDimmer().classList.add("active", "visible")
    }

    this.element.classList.add("active", "visible")
    document.addEventListener("keydown", this._onKeydown)

    if (this.autofocusValue) {
      const focusable = this.element.querySelector("input, button, select, textarea, [tabindex]")
      if (focusable) focusable.focus()
    }

    this.dispatch("show")
  }

  hide() {
    this.element.classList.remove("active", "visible")
    this._removeDimmer()
    document.removeEventListener("keydown", this._onKeydown)
    this.dispatch("hide")
  }

  toggle() {
    this.element.classList.contains("active") ? this.hide() : this.show()
  }

  approve() {
    this.dispatch("approve")
    this.hide()
  }

  deny() {
    this.dispatch("deny")
    this.hide()
  }

  get isActive() {
    return this.element.classList.contains("active")
  }

  // -- Private --

  _handleKeydown(event) {
    if (event.key === "Escape" && this.closableValue) {
      this.hide()
    }
  }

  _ensureDimmer() {
    let dimmer = document.querySelector(".ui.dimmer.fui-modal-dimmer")
    if (!dimmer) {
      dimmer = document.createElement("div")
      dimmer.classList.add("ui", "dimmer", "modals", "page", "fui-modal-dimmer")
      if (this.blurringValue) dimmer.classList.add("blurring")
      if (this.closableValue) {
        dimmer.addEventListener("click", (e) => {
          if (e.target === dimmer) this.hide()
        })
      }
      document.body.appendChild(dimmer)
    }
    return dimmer
  }

  _removeDimmer() {
    const dimmer = document.querySelector(".ui.dimmer.fui-modal-dimmer")
    if (dimmer) dimmer.classList.remove("active", "visible")
  }
}
