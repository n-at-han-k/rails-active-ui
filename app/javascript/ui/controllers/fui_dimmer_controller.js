import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Dimmer — page/element overlay.
// Replaces: $.fn.dimmer
//
// Usage:
//   <div class="dimmable" data-controller="fui-dimmer">
//     <div class="ui dimmer" data-fui-dimmer-target="dimmer">
//       <div class="content">Dimmed content</div>
//     </div>
//     <p>Page content</p>
//     <button data-action="click->fui-dimmer#toggle">Toggle</button>
//   </div>
//
export default class extends Controller {
  static targets = ["dimmer"]
  static values = {
    closable:   { type: Boolean, default: true },
    on:         { type: String, default: "" },
    transition: { type: String, default: "fade" },
  }

  connect() {
    if (this.onValue === "hover") {
      this.element.addEventListener("mouseenter", this._show)
      this.element.addEventListener("mouseleave", this._hide)
    } else if (this.onValue === "click") {
      this.element.addEventListener("click", this._toggle)
    }

    if (this.closableValue && this.hasDimmerTarget) {
      this.dimmerTarget.addEventListener("click", this._handleDimmerClick)
    }
  }

  disconnect() {
    this.element.removeEventListener("mouseenter", this._show)
    this.element.removeEventListener("mouseleave", this._hide)
    this.element.removeEventListener("click", this._toggle)
    if (this.hasDimmerTarget) {
      this.dimmerTarget.removeEventListener("click", this._handleDimmerClick)
    }
  }

  show() { this._show() }
  hide() { this._hide() }
  toggle() { this._toggle() }

  get isActive() {
    return this.hasDimmerTarget && this.dimmerTarget.classList.contains("active")
  }

  // -- Private --

  _show = () => {
    if (!this.hasDimmerTarget) return
    this.dimmerTarget.classList.add("active", "visible")
    this.element.classList.add("dimmed")
    this.dispatch("show")
  }

  _hide = () => {
    if (!this.hasDimmerTarget) return
    this.dimmerTarget.classList.remove("active", "visible")
    this.element.classList.remove("dimmed")
    this.dispatch("hide")
  }

  _toggle = () => {
    this.isActive ? this._hide() : this._show()
  }

  _handleDimmerClick = (event) => {
    if (event.target === this.dimmerTarget) {
      this._hide()
    }
  }
}
