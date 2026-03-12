import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Flyout — slide-out panel from screen edge.
// Replaces: $.fn.flyout
//
// Usage:
//   <div class="ui flyout" data-controller="fui-flyout"
//        data-fui-flyout-target="flyout">
//     <i class="close icon" data-action="click->fui-flyout#hide"></i>
//     <div class="header">Title</div>
//     <div class="content">Content here</div>
//     <div class="actions">
//       <button class="ui approve button" data-action="click->fui-flyout#approve">OK</button>
//       <button class="ui deny button" data-action="click->fui-flyout#deny">Cancel</button>
//     </div>
//   </div>
//
export default class extends Controller {
  static targets = ["flyout"]
  static values = {
    closable:       { type: Boolean, default: true },
    dimPage:        { type: Boolean, default: true },
    keyboardShortcuts: { type: Boolean, default: true },
  }

  connect() {
    this._onKeydown = this._handleKeydown.bind(this)
    if (this.keyboardShortcutsValue) {
      document.addEventListener("keydown", this._onKeydown)
    }
  }

  disconnect() {
    document.removeEventListener("keydown", this._onKeydown)
  }

  show() {
    this.element.classList.add("visible", "active")

    if (this.dimPageValue) {
      this._ensureDimmer().classList.add("active", "visible")
    }

    this.dispatch("show")
  }

  hide() {
    this.element.classList.remove("visible", "active")

    const dimmer = document.querySelector(".ui.dimmer.fui-flyout-dimmer")
    if (dimmer) dimmer.classList.remove("active", "visible")

    this.dispatch("hide")
  }

  toggle() {
    this.element.classList.contains("visible") ? this.hide() : this.show()
  }

  approve() {
    this.dispatch("approve")
    this.hide()
  }

  deny() {
    this.dispatch("deny")
    this.hide()
  }

  // -- Private --

  _handleKeydown(event) {
    if (event.key === "Escape" && this.closableValue) {
      this.hide()
    }
  }

  _ensureDimmer() {
    let dimmer = document.querySelector(".ui.dimmer.fui-flyout-dimmer")
    if (!dimmer) {
      dimmer = document.createElement("div")
      dimmer.classList.add("ui", "dimmer", "fui-flyout-dimmer")
      if (this.closableValue) {
        dimmer.addEventListener("click", () => this.hide())
      }
      document.body.appendChild(dimmer)
    }
    return dimmer
  }
}
