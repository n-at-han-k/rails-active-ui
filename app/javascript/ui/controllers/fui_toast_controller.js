import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Toast — toast notifications.
// Replaces: $.fn.toast
//
// Usage:
//   <div data-controller="fui-toast"
//        data-fui-toast-position-value="top right"
//        data-fui-toast-display-time-value="3000"
//        data-fui-toast-title-value="Success"
//        data-fui-toast-message-value="Item saved."
//        data-fui-toast-class-value="success">
//   </div>
//
//   <!-- Or trigger imperatively: container will be auto-created -->
//   <button data-action="click->fui-toast#show">Show Toast</button>
//
export default class extends Controller {
  static values = {
    position:       { type: String, default: "top right" },
    displayTime:    { type: Number, default: 3000 },
    closeOnClick:   { type: Boolean, default: true },
    closeIcon:      { type: Boolean, default: false },
    class:          { type: String, default: "neutral" },
    title:          { type: String, default: "" },
    message:        { type: String, default: "" },
    showProgress:   { type: Boolean, default: false },
    progressUp:     { type: Boolean, default: false },
    pauseOnHover:   { type: Boolean, default: true },
    newestOnTop:    { type: Boolean, default: false },
    compact:        { type: Boolean, default: true },
  }

  connect() {}
  disconnect() {
    if (this._dismissTimer) clearTimeout(this._dismissTimer)
  }

  show() {
    const container = this._ensureContainer()
    const toast = this._createToast()

    if (this.newestOnTopValue) {
      container.prepend(toast)
    } else {
      container.appendChild(toast)
    }

    // Trigger reflow then add visible
    toast.offsetHeight // eslint-disable-line no-unused-expressions
    toast.classList.add("visible")

    if (this.displayTimeValue > 0) {
      this._dismissTimer = setTimeout(() => this._closeToast(toast), this.displayTimeValue)
    }

    if (this.pauseOnHoverValue) {
      toast.addEventListener("mouseenter", () => {
        if (this._dismissTimer) clearTimeout(this._dismissTimer)
      })
      toast.addEventListener("mouseleave", () => {
        if (this.displayTimeValue > 0) {
          this._dismissTimer = setTimeout(() => this._closeToast(toast), this.displayTimeValue)
        }
      })
    }

    this.dispatch("show")
  }

  close() {
    const container = this._getContainer()
    if (container && container.lastElementChild) {
      this._closeToast(container.lastElementChild)
    }
  }

  // -- Private --

  _createToast() {
    const toast = document.createElement("div")
    toast.classList.add("ui", "toast", this.classValue)

    if (this.compactValue) toast.classList.add("compact")

    if (this.closeIconValue) {
      const close = document.createElement("i")
      close.classList.add("close", "icon")
      close.addEventListener("click", () => this._closeToast(toast))
      toast.appendChild(close)
    }

    if (this.titleValue) {
      const title = document.createElement("div")
      title.classList.add("header")
      title.textContent = this.titleValue
      toast.appendChild(title)
    }

    if (this.messageValue) {
      const message = document.createElement("div")
      message.classList.add("content")
      message.textContent = this.messageValue
      toast.appendChild(message)
    }

    if (this.closeOnClickValue && !this.closeIconValue) {
      toast.style.cursor = "pointer"
      toast.addEventListener("click", () => this._closeToast(toast))
    }

    if (this.showProgressValue) {
      const bar = document.createElement("div")
      bar.classList.add("ui", "attached", "active", "progress")
      if (this.progressUpValue) bar.classList.add("top")
      else bar.classList.add("bottom")
      const inner = document.createElement("div")
      inner.classList.add("bar")
      inner.style.transitionDuration = `${this.displayTimeValue}ms`
      inner.style.width = this.progressUpValue ? "0%" : "100%"
      bar.appendChild(inner)
      toast.appendChild(bar)

      requestAnimationFrame(() => {
        inner.style.width = this.progressUpValue ? "100%" : "0%"
      })
    }

    return toast
  }

  _closeToast(toast) {
    toast.classList.remove("visible")
    toast.classList.add("hidden")
    setTimeout(() => toast.remove(), 500)
    this.dispatch("hide")
  }

  _ensureContainer() {
    let container = this._getContainer()
    if (container) return container

    container = document.createElement("div")
    container.classList.add("ui", "toast-container", ...this.positionValue.split(" "))
    container.dataset.fuiToastPosition = this.positionValue
    document.body.appendChild(container)
    return container
  }

  _getContainer() {
    return document.querySelector(
      `.ui.toast-container[data-fui-toast-position="${this.positionValue}"]`
    )
  }
}
