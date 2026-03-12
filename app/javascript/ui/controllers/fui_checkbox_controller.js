import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Checkbox — checkboxes, radios, toggles, sliders.
// Replaces: $.fn.checkbox
//
// Usage:
//   <div class="ui checkbox" data-controller="fui-checkbox"
//        data-action="click->fui-checkbox#toggle">
//     <input type="checkbox" data-fui-checkbox-target="input">
//     <label>Accept terms</label>
//   </div>
//
export default class extends Controller {
  static targets = ["input"]
  static values = {
    uncheckable:    { type: Boolean, default: true },
    fireOnInit:     { type: Boolean, default: false },
    enableEnterKey: { type: Boolean, default: true },
  }

  connect() {
    this._syncState()

    if (this.enableEnterKeyValue) {
      this._onKeydown = this._handleKeydown.bind(this)
      this.element.addEventListener("keydown", this._onKeydown)
    }

    if (this.fireOnInitValue) {
      this.dispatch("change", { detail: { checked: this.isChecked } })
    }
  }

  disconnect() {
    if (this._onKeydown) {
      this.element.removeEventListener("keydown", this._onKeydown)
    }
  }

  toggle() {
    if (this.inputTarget.disabled) return

    if (this.isChecked) {
      if (this.uncheckableValue) this.uncheck()
    } else {
      this.check()
    }
  }

  check() {
    this.inputTarget.checked = true
    this._syncState()
    this.dispatch("checked")
    this.dispatch("change", { detail: { checked: true } })
  }

  uncheck() {
    this.inputTarget.checked = false
    this._syncState()
    this.dispatch("unchecked")
    this.dispatch("change", { detail: { checked: false } })
  }

  enable() {
    this.inputTarget.disabled = false
    this.element.classList.remove("disabled")
    this.dispatch("enable")
  }

  disable() {
    this.inputTarget.disabled = true
    this.element.classList.add("disabled")
    this.dispatch("disable")
  }

  get isChecked() {
    return this.inputTarget.checked
  }

  // -- Private --

  _syncState() {
    this.element.classList.toggle("checked", this.inputTarget.checked)
  }

  _handleKeydown(event) {
    if (event.key === "Enter") {
      event.preventDefault()
      this.toggle()
    }
  }
}
