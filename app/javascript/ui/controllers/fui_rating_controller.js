import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Rating — star/heart rating widget.
// Replaces: $.fn.rating
//
// Usage:
//   <div class="ui rating" data-controller="fui-rating"
//        data-fui-rating-max-rating-value="5"
//        data-fui-rating-initial-rating-value="3">
//     <i class="icon" data-fui-rating-target="icon" data-action="click->fui-rating#rate mouseover->fui-rating#hover" data-rating="1"></i>
//     <i class="icon" data-fui-rating-target="icon" data-action="click->fui-rating#rate mouseover->fui-rating#hover" data-rating="2"></i>
//     <i class="icon" data-fui-rating-target="icon" data-action="click->fui-rating#rate mouseover->fui-rating#hover" data-rating="3"></i>
//     <i class="icon" data-fui-rating-target="icon" data-action="click->fui-rating#rate mouseover->fui-rating#hover" data-rating="4"></i>
//     <i class="icon" data-fui-rating-target="icon" data-action="click->fui-rating#rate mouseover->fui-rating#hover" data-rating="5"></i>
//   </div>
//
export default class extends Controller {
  static targets = ["icon"]
  static values = {
    maxRating:     { type: Number, default: 5 },
    initialRating: { type: Number, default: 0 },
    interactive:   { type: Boolean, default: true },
    clearable:     { type: Boolean, default: false },
    fireOnInit:    { type: Boolean, default: false },
  }

  connect() {
    this._rating = this.initialRatingValue
    this._syncIcons()

    this.element.addEventListener("mouseleave", this._onMouseLeave)

    if (this.fireOnInitValue) {
      this.dispatch("rate", { detail: { rating: this._rating } })
    }
  }

  disconnect() {
    this.element.removeEventListener("mouseleave", this._onMouseLeave)
  }

  rate(event) {
    if (!this.interactiveValue) return

    const rating = parseInt(event.currentTarget.dataset.rating, 10)

    if (this.clearableValue && rating === this._rating) {
      this._rating = 0
    } else {
      this._rating = rating
    }

    this._syncIcons()
    this.dispatch("rate", { detail: { rating: this._rating } })
  }

  hover(event) {
    if (!this.interactiveValue) return
    const rating = parseInt(event.currentTarget.dataset.rating, 10)
    this._highlightIcons(rating)
  }

  setRating(rating) {
    this._rating = Math.max(0, Math.min(this.maxRatingValue, rating))
    this._syncIcons()
  }

  getRating() { return this._rating }

  enable() {
    this.interactiveValue = true
    this.element.classList.remove("disabled")
  }

  disable() {
    this.interactiveValue = false
    this.element.classList.add("disabled")
  }

  clearRating() {
    this._rating = 0
    this._syncIcons()
  }

  // -- Private --

  _onMouseLeave = () => {
    this._syncIcons()
  }

  _syncIcons() {
    this.iconTargets.forEach((icon) => {
      const r = parseInt(icon.dataset.rating, 10)
      icon.classList.toggle("active", r <= this._rating)
      icon.classList.remove("selected")
    })
  }

  _highlightIcons(upTo) {
    this.iconTargets.forEach((icon) => {
      const r = parseInt(icon.dataset.rating, 10)
      icon.classList.toggle("selected", r <= upTo)
    })
  }
}
