import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Transition — CSS animation framework.
// Replaces: $.fn.transition
//
// Usage:
//   <div data-controller="fui-transition"
//        data-fui-transition-animation-value="fade"
//        data-fui-transition-duration-value="500">
//     Content to animate
//   </div>
//
//   <button data-action="click->fui-transition#animate">Animate</button>
//   <button data-action="click->fui-transition#toggle">Toggle</button>
//
export default class extends Controller {
  static values = {
    animation: { type: String, default: "fade" },
    duration:  { type: Number, default: 500 },
    queue:     { type: Boolean, default: true },
  }

  connect() {
    this._animating = false
    this._queue = []
    this._onAnimationEnd = this._handleAnimationEnd.bind(this)
    this.element.addEventListener("animationend", this._onAnimationEnd)
  }

  disconnect() {
    this.element.removeEventListener("animationend", this._onAnimationEnd)
    this._queue = []
  }

  animate(event) {
    const animation = (event && event.params && event.params.animation) || this.animationValue
    this._runAnimation(animation)
  }

  show() {
    this._runAnimation(`${this.animationValue} in`)
    this.element.classList.remove("hidden")
    this.element.classList.add("visible")
  }

  hide() {
    this._runAnimation(`${this.animationValue} out`)
    this.element.classList.remove("visible")
    this.element.classList.add("hidden")
  }

  toggle() {
    if (this.element.classList.contains("hidden") ||
        getComputedStyle(this.element).display === "none") {
      this.show()
    } else {
      this.hide()
    }
  }

  stop() {
    this._cleanup()
    this._queue = []
  }

  // -- Private --

  _runAnimation(animation) {
    if (this._animating && this.queueValue) {
      this._queue.push(animation)
      return
    }

    this._animating = true
    this.element.classList.add("animating", "transition", ...animation.split(" "))
    this.element.style.animationDuration = `${this.durationValue}ms`

    this.dispatch("start", { detail: { animation } })

    // Failsafe in case animationend never fires
    this._failsafe = setTimeout(() => this._handleAnimationEnd(), this.durationValue + 100)
  }

  _handleAnimationEnd() {
    if (this._failsafe) clearTimeout(this._failsafe)
    this._cleanup()
    this.dispatch("complete")

    if (this._queue.length > 0) {
      const next = this._queue.shift()
      this._runAnimation(next)
    }
  }

  _cleanup() {
    this._animating = false
    this.element.classList.remove("animating")
    this.element.style.animationDuration = ""

    // Remove animation-specific classes (fade, scale, slide, etc.)
    // Keep structural classes (transition, visible, hidden)
    const animClasses = this.animationValue.split(" ")
    animClasses.forEach((cls) => this.element.classList.remove(cls))
    this.element.classList.remove("in", "out")
  }
}
