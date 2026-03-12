import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Shape — 3D CSS shape transformations.
// Replaces: $.fn.shape
//
// Usage:
//   <div class="ui shape" data-controller="fui-shape">
//     <div class="sides" data-fui-shape-target="sides">
//       <div class="side active" data-fui-shape-target="side">Side 1</div>
//       <div class="side" data-fui-shape-target="side">Side 2</div>
//     </div>
//   </div>
//
//   <button data-action="click->fui-shape#flipRight">Flip</button>
//
export default class extends Controller {
  static targets = ["sides", "side"]
  static values = {
    duration:      { type: Number, default: 700 },
    allowRepeats:  { type: Boolean, default: false },
  }

  connect() {
    this._activeSideIndex = this.sideTargets.findIndex(
      (s) => s.classList.contains("active")
    )
    if (this._activeSideIndex === -1) this._activeSideIndex = 0
  }

  disconnect() {}

  flipUp()    { this._flipTo("up") }
  flipDown()  { this._flipTo("down") }
  flipLeft()  { this._flipTo("left") }
  flipRight() { this._flipTo("right") }
  flipOver()  { this._flipTo("over") }
  flipBack()  { this._flipTo("back") }

  // -- Private --

  _flipTo(direction) {
    if (this._animating) return
    if (this.sideTargets.length < 2) return

    const nextIndex = this._nextSideIndex()
    if (!this.allowRepeatsValue && nextIndex === this._activeSideIndex) return

    this._animating = true
    this.dispatch("beforeChange")

    const current = this.sideTargets[this._activeSideIndex]
    const next = this.sideTargets[nextIndex]

    current.classList.remove("active")
    current.classList.add("hidden")
    next.classList.remove("hidden")
    next.classList.add("active")

    this._activeSideIndex = nextIndex

    setTimeout(() => {
      this._animating = false
      this.dispatch("change", { detail: { side: nextIndex, direction } })
    }, this.durationValue)
  }

  _nextSideIndex() {
    const next = this._activeSideIndex + 1
    return next >= this.sideTargets.length ? 0 : next
  }
}
