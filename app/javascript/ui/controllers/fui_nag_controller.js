import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Nag — persistent dismissible notification bar.
// Replaces: $.fn.nag
//
// Usage:
//   <div class="ui nag" data-controller="fui-nag"
//        data-fui-nag-key-value="cookie-notice"
//        data-fui-nag-storage-method-value="localstorage">
//     <span class="title">We use cookies.</span>
//     <i class="close icon" data-action="click->fui-nag#dismiss"></i>
//   </div>
//
export default class extends Controller {
  static values = {
    key:           { type: String, default: "nag" },
    value:         { type: String, default: "dismiss" },
    storageMethod: { type: String, default: "localstorage" },
    expires:       { type: Number, default: 30 },
    displayTime:   { type: Number, default: 0 },
    persist:       { type: Boolean, default: false },
  }

  connect() {
    if (this._shouldShow()) {
      this.show()
    } else {
      this.element.style.display = "none"
    }
  }

  disconnect() {}

  show() {
    this.element.style.display = ""
    this.element.classList.add("visible")

    if (this.displayTimeValue > 0) {
      this._autoHideTimer = setTimeout(() => this.hide(), this.displayTimeValue)
    }

    this.dispatch("show")
  }

  hide() {
    if (this._autoHideTimer) clearTimeout(this._autoHideTimer)
    this.element.classList.remove("visible")
    this.element.style.display = "none"
    this.dispatch("hide")
  }

  dismiss() {
    this.hide()
    this._storeDismissal()
    this.dispatch("dismiss")
  }

  clear() {
    this._clearStorage()
  }

  // -- Private --

  _shouldShow() {
    if (this.persistValue) return true
    return this._storageGet() !== this.valueValue
  }

  _storeDismissal() {
    if (this.storageMethodValue === "localstorage") {
      try {
        localStorage.setItem(this.keyValue, this.valueValue)
      } catch (e) { /* storage full or unavailable */ }
    } else if (this.storageMethodValue === "sessionstorage") {
      try {
        sessionStorage.setItem(this.keyValue, this.valueValue)
      } catch (e) { /* storage full or unavailable */ }
    } else {
      const days = this.expiresValue
      const date = new Date()
      date.setTime(date.getTime() + days * 24 * 60 * 60 * 1000)
      document.cookie = `${this.keyValue}=${this.valueValue};expires=${date.toUTCString()};path=/`
    }
  }

  _storageGet() {
    if (this.storageMethodValue === "localstorage") {
      try { return localStorage.getItem(this.keyValue) } catch (e) { return null }
    } else if (this.storageMethodValue === "sessionstorage") {
      try { return sessionStorage.getItem(this.keyValue) } catch (e) { return null }
    } else {
      const match = document.cookie.match(new RegExp(`(?:^|;\\s*)${this.keyValue}=([^;]*)`))
      return match ? match[1] : null
    }
  }

  _clearStorage() {
    if (this.storageMethodValue === "localstorage") {
      try { localStorage.removeItem(this.keyValue) } catch (e) {}
    } else if (this.storageMethodValue === "sessionstorage") {
      try { sessionStorage.removeItem(this.keyValue) } catch (e) {}
    } else {
      document.cookie = `${this.keyValue}=;expires=Thu, 01 Jan 1970 00:00:00 GMT;path=/`
    }
  }
}
