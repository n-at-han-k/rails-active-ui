import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Accordion — collapsible content panels.
// Replaces: $.fn.accordion
//
// Usage:
//   <div class="ui accordion" data-controller="fui-accordion">
//     <div class="title" data-action="click->fui-accordion#toggle"
//          data-fui-accordion-target="title">
//       Section 1
//     </div>
//     <div class="content" data-fui-accordion-target="content">
//       Panel content here
//     </div>
//   </div>
//
export default class extends Controller {
  static targets = ["title", "content"]
  static values = {
    exclusive:   { type: Boolean, default: true },
    collapsible: { type: Boolean, default: true },
    duration:    { type: Number, default: 350 },
  }

  connect() {}
  disconnect() {}

  toggle(event) {
    const title = event.currentTarget
    const index = this.titleTargets.indexOf(title)
    if (index === -1) return

    const isActive = title.classList.contains("active")

    if (isActive && this.collapsibleValue) {
      this._close(index)
    } else if (!isActive) {
      if (this.exclusiveValue) this._closeAll()
      this._open(index)
    }
  }

  open(index) {
    if (this.exclusiveValue) this._closeAll()
    this._open(index)
  }

  close(index) {
    this._close(index)
  }

  // -- Private --

  _open(index) {
    const title = this.titleTargets[index]
    const content = this.contentTargets[index]
    if (!title || !content) return

    title.classList.add("active")
    content.classList.add("active")
    this.dispatch("open", { detail: { index } })
  }

  _close(index) {
    const title = this.titleTargets[index]
    const content = this.contentTargets[index]
    if (!title || !content) return

    title.classList.remove("active")
    content.classList.remove("active")
    this.dispatch("close", { detail: { index } })
  }

  _closeAll() {
    this.titleTargets.forEach((_, i) => this._close(i))
  }
}
