import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Sidebar — slide-out navigation panel.
// Replaces: $.fn.sidebar
//
// Usage:
//   <div class="ui sidebar" data-controller="fui-sidebar"
//        data-fui-sidebar-transition-value="overlay"
//        data-fui-sidebar-dim-page-value="true">
//     <a class="item">Menu Item 1</a>
//     <a class="item">Menu Item 2</a>
//   </div>
//   <div class="pusher">Main content</div>
//
//   <button data-action="click->fui-sidebar#toggle">Toggle Sidebar</button>
//
export default class extends Controller {
  static values = {
    transition: { type: String, default: "overlay" },
    closable:   { type: Boolean, default: true },
    dimPage:    { type: Boolean, default: true },
    scrollLock: { type: Boolean, default: false },
  }

  connect() {
    this._onDocumentClick = this._handleDocumentClick.bind(this)
  }

  disconnect() {
    document.removeEventListener("click", this._onDocumentClick)
  }

  show() {
    this.element.classList.add("visible")

    const pusher = document.querySelector(".pusher")
    if (pusher) pusher.classList.add("dimmed")

    if (this.dimPageValue) {
      this._ensureDimmer().classList.add("active", "visible")
    }

    if (this.scrollLockValue) {
      document.body.style.overflow = "hidden"
    }

    document.addEventListener("click", this._onDocumentClick)
    this.dispatch("show")
  }

  hide() {
    this.element.classList.remove("visible")

    const pusher = document.querySelector(".pusher")
    if (pusher) pusher.classList.remove("dimmed")

    const dimmer = document.querySelector(".fui-sidebar-dimmer")
    if (dimmer) dimmer.classList.remove("active", "visible")

    if (this.scrollLockValue) {
      document.body.style.overflow = ""
    }

    document.removeEventListener("click", this._onDocumentClick)
    this.dispatch("hide")
  }

  toggle() {
    this.element.classList.contains("visible") ? this.hide() : this.show()
  }

  get isVisible() {
    return this.element.classList.contains("visible")
  }

  // -- Private --

  _handleDocumentClick(event) {
    if (this.closableValue && !this.element.contains(event.target)) {
      this.hide()
    }
  }

  _ensureDimmer() {
    let dimmer = document.querySelector(".fui-sidebar-dimmer")
    if (!dimmer) {
      dimmer = document.createElement("div")
      dimmer.classList.add("ui", "dimmer", "fui-sidebar-dimmer")
      if (this.closableValue) {
        dimmer.addEventListener("click", () => this.hide())
      }
      document.body.appendChild(dimmer)
    }
    return dimmer
  }
}
