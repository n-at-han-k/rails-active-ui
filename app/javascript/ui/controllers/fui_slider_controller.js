import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Slider — range slider control.
// Replaces: $.fn.slider
//
// Usage:
//   <div class="ui slider" data-controller="fui-slider"
//        data-fui-slider-min-value="0"
//        data-fui-slider-max-value="100"
//        data-fui-slider-step-value="1"
//        data-fui-slider-start-value="50">
//     <input type="hidden" data-fui-slider-target="input">
//     <div class="inner" data-fui-slider-target="track">
//       <div class="track-fill" data-fui-slider-target="fill"></div>
//     </div>
//     <div class="thumb" data-fui-slider-target="thumb"
//          data-action="mousedown->fui-slider#startDrag
//                       touchstart->fui-slider#startDrag"></div>
//   </div>
//
export default class extends Controller {
  static targets = ["thumb", "track", "fill", "input"]
  static values = {
    min:      { type: Number, default: 0 },
    max:      { type: Number, default: 100 },
    step:     { type: Number, default: 1 },
    start:    { type: Number, default: 0 },
    smooth:   { type: Boolean, default: false },
    vertical: { type: Boolean, default: false },
  }

  connect() {
    this._value = this.startValue
    this._onMouseMove = this._handleMouseMove.bind(this)
    this._onMouseUp = this._handleMouseUp.bind(this)
    this._update()
  }

  disconnect() {
    document.removeEventListener("mousemove", this._onMouseMove)
    document.removeEventListener("mouseup", this._onMouseUp)
    document.removeEventListener("touchmove", this._onMouseMove)
    document.removeEventListener("touchend", this._onMouseUp)
  }

  startDrag(event) {
    event.preventDefault()
    this._dragging = true
    document.addEventListener("mousemove", this._onMouseMove)
    document.addEventListener("mouseup", this._onMouseUp)
    document.addEventListener("touchmove", this._onMouseMove)
    document.addEventListener("touchend", this._onMouseUp)
  }

  setValue(val) {
    this._value = this._clamp(this._snap(val))
    this._update()
    this.dispatch("change", { detail: { value: this._value } })
  }

  get value() { return this._value }

  // -- Private --

  _handleMouseMove(event) {
    if (!this._dragging) return
    const clientPos = event.touches ? event.touches[0] : event
    const rect = this.hasTrackTarget
      ? this.trackTarget.getBoundingClientRect()
      : this.element.getBoundingClientRect()

    let ratio
    if (this.verticalValue) {
      ratio = 1 - (clientPos.clientY - rect.top) / rect.height
    } else {
      ratio = (clientPos.clientX - rect.left) / rect.width
    }

    ratio = Math.max(0, Math.min(1, ratio))
    const rawValue = this.minValue + ratio * (this.maxValue - this.minValue)
    this.setValue(rawValue)
  }

  _handleMouseUp() {
    this._dragging = false
    document.removeEventListener("mousemove", this._onMouseMove)
    document.removeEventListener("mouseup", this._onMouseUp)
    document.removeEventListener("touchmove", this._onMouseMove)
    document.removeEventListener("touchend", this._onMouseUp)
  }

  _snap(val) {
    if (this.smoothValue) return val
    const step = this.stepValue
    return Math.round(val / step) * step
  }

  _clamp(val) {
    return Math.max(this.minValue, Math.min(this.maxValue, val))
  }

  _update() {
    const range = this.maxValue - this.minValue
    const percent = range > 0 ? ((this._value - this.minValue) / range) * 100 : 0

    if (this.hasThumbTarget) {
      const prop = this.verticalValue ? "bottom" : "left"
      this.thumbTarget.style[prop] = `${percent}%`
    }

    if (this.hasFillTarget) {
      const prop = this.verticalValue ? "height" : "width"
      this.fillTarget.style[prop] = `${percent}%`
    }

    if (this.hasInputTarget) {
      this.inputTarget.value = this._value
    }
  }
}
