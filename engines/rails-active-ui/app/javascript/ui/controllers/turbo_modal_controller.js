import { Controller } from "@hotwired/stimulus"

// Bridges Turbo Frame events to the Fomantic-UI modal.
//
// Used alongside fui-modal on a Modal(turbo: true) element.
// - turbo:frame-load  -> open()           (content arrived, show modal)
// - turbo:submit-end  -> closeOnSuccess() (form submitted, hide if ok)
// - click cancel      -> hide()           (dismiss without submitting)
//
// The fui-modal controller handles Fomantic-UI init and settings.
// This controller only handles the Turbo lifecycle + cancel.

export default class extends Controller {
  connect() {
    // Clear turbo frame content when the modal finishes hiding,
    // so it's clean for the next open.
    $(this.element).modal("setting", "onHidden", () => {
      const frame = this.element.querySelector("turbo-frame")
      if (frame) frame.innerHTML = ""
    })
  }

  open() {
    $(this.element).modal("show")
  }

  hide() {
    $(this.element).modal("hide")
  }

  closeOnSuccess(event) {
    if (event.detail.success) {
      $(this.element).modal("hide")
    }
  }
}
