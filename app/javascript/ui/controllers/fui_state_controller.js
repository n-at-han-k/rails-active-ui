import { Controller } from "@hotwired/stimulus"

// Fomantic-UI State — UI state management for elements.
// Replaces: $.fn.state
//
// Usage:
//   <button data-controller="fui-state"
//           data-fui-state-active-text-value="Following"
//           data-fui-state-inactive-text-value="Follow"
//           data-action="click->fui-state#toggle">
//     Follow
//   </button>
//
export default class extends Controller {
  static values = {
    activeText:     { type: String, default: "" },
    inactiveText:   { type: String, default: "" },
    activateText:   { type: String, default: "" },
    deactivateText: { type: String, default: "" },
    flashText:      { type: String, default: "" },
    flashDuration:  { type: Number, default: 1000 },
  }

  connect() {
    this._originalText = this.element.textContent.trim()
    this._active = this.element.classList.contains("active")
  }

  disconnect() {}

  toggle() {
    this._active ? this.deactivate() : this.activate()
  }

  activate() {
    this._active = true
    this.element.classList.add("active")
    this.element.classList.remove("inactive")

    if (this.activeTextValue) {
      this.element.textContent = this.activeTextValue
    }

    this.dispatch("activate")
    this.dispatch("change", { detail: { active: true } })
  }

  deactivate() {
    this._active = false
    this.element.classList.remove("active")
    this.element.classList.add("inactive")

    if (this.inactiveTextValue) {
      this.element.textContent = this.inactiveTextValue
    }

    this.dispatch("deactivate")
    this.dispatch("change", { detail: { active: false } })
  }

  enable() {
    this.element.classList.remove("disabled")
    this.dispatch("enable")
  }

  disable() {
    this.element.classList.add("disabled")
    this.dispatch("disable")
  }

  setLoading() {
    this.element.classList.add("loading")
  }

  removeLoading() {
    this.element.classList.remove("loading")
  }

  flash(text) {
    const original = this.element.textContent
    this.element.textContent = text || this.flashTextValue || ""
    setTimeout(() => {
      this.element.textContent = original
    }, this.flashDurationValue)
  }

  get isActive() { return this._active }
  get isDisabled() { return this.element.classList.contains("disabled") }
  get isLoading() { return this.element.classList.contains("loading") }
}
