import { Controller } from "@hotwired/stimulus"

// Generic list-item selection controller.
//
// Mark clickable items with:
// - data-fui-item-list-target="item"
// - data-item-id="123"
//
// Wire click on link/card with:
// - data-action="click->fui-item-list#select"
export default class extends Controller {
  static targets = ["item"]
  static values = { selectedId: { type: Number, default: 0 } }

  connect() {
    this.#applySelected()
  }

  select(event) {
    const card =
      event.target.closest("[data-item-id]") ||
      event.currentTarget?.closest?.("[data-item-id]") ||
      event.currentTarget?.querySelector?.("[data-item-id]")

    if (card) {
      this.selectedIdValue = parseInt(card.dataset.itemId, 10) || 0
    }
  }

  selectedIdValueChanged() {
    this.#applySelected()
  }

  #applySelected() {
    this.itemTargets.forEach((item) => {
      const id = parseInt(item.dataset.itemId, 10) || 0
      item.classList.toggle("active", id === this.selectedIdValue)
    })
  }
}
