import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Calendar — date/time picker popup.
// Replaces: $.fn.calendar
//
// Usage:
//   <div class="ui calendar" data-controller="fui-calendar"
//        data-fui-calendar-type-value="date">
//     <div class="ui input">
//       <input type="text" data-fui-calendar-target="input"
//              data-action="focus->fui-calendar#show">
//     </div>
//     <div class="ui popup" data-fui-calendar-target="popup">
//       <!-- calendar grid rendered here -->
//     </div>
//   </div>
//
export default class extends Controller {
  static targets = ["input", "popup"]
  static values = {
    type:       { type: String, default: "date" },
    closable:   { type: Boolean, default: true },
    monthFirst: { type: Boolean, default: true },
  }

  connect() {
    this._onDocumentClick = this._handleDocumentClick.bind(this)
    document.addEventListener("click", this._onDocumentClick)
  }

  disconnect() {
    document.removeEventListener("click", this._onDocumentClick)
  }

  show() {
    if (!this.hasPopupTarget) return
    this.popupTarget.classList.add("visible")
    this.element.classList.add("active")
    this.dispatch("show")
  }

  hide() {
    if (!this.hasPopupTarget) return
    this.popupTarget.classList.remove("visible")
    this.element.classList.remove("active")
    this.dispatch("hide")
  }

  toggle() {
    if (this.element.classList.contains("active")) {
      this.hide()
    } else {
      this.show()
    }
  }

  clear() {
    if (this.hasInputTarget) {
      this.inputTarget.value = ""
    }
    this.hide()
    this.dispatch("change", { detail: { date: null, text: "" } })
  }

  // -- Private --

  _handleDocumentClick(event) {
    if (this.closableValue && !this.element.contains(event.target)) {
      this.hide()
    }
  }
}
