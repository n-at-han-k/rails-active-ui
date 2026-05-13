import { Controller } from "@hotwired/stimulus"

// Navigation back controller.
//
// If there is Turbo history to restore, prevent normal navigation and go back.
// Otherwise fallback to link href.
export default class extends Controller {
  back(event) {
    if (this.#shouldRestore) {
      event.preventDefault()
      window.history.back()
    }
  }

  get #shouldRestore() {
    return !this.#isFirstHistoryEntry
  }

  get #isFirstHistoryEntry() {
    const state = window.history.state
    return !state || !state.turbo || state.turbo.restorationIndex === 0
  }
}
