import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Progress — progress bars with labels.
// Replaces: $.fn.progress
//
// Usage:
//   <div class="ui progress" data-controller="fui-progress"
//        data-fui-progress-percent-value="45"
//        data-fui-progress-total-value="100">
//     <div class="bar" data-fui-progress-target="bar">
//       <div class="progress" data-fui-progress-target="label"></div>
//     </div>
//   </div>
//
export default class extends Controller {
  static targets = ["bar", "label"]
  static values = {
    percent:     { type: Number, default: 0 },
    total:       { type: Number, default: 0 },
    value:       { type: Number, default: 0 },
    autoSuccess: { type: Boolean, default: true },
    showActivity: { type: Boolean, default: true },
    labelType:   { type: String, default: "percent" },
    precision:   { type: Number, default: 0 },
  }

  connect() {
    this._update()
  }

  disconnect() {}

  percentValueChanged() { this._update() }
  valueValueChanged()   { this._update() }
  totalValueChanged()   { this._update() }

  setPercent(percent) {
    this.percentValue = Math.max(0, Math.min(100, percent))
  }

  setValue(value) {
    this.valueValue = value
    if (this.totalValue > 0) {
      this.percentValue = (value / this.totalValue) * 100
    }
  }

  increment(amount = 1) {
    if (this.totalValue > 0) {
      this.setValue(this.valueValue + amount)
    } else {
      this.setPercent(this.percentValue + amount)
    }
  }

  decrement(amount = 1) {
    if (this.totalValue > 0) {
      this.setValue(this.valueValue - amount)
    } else {
      this.setPercent(this.percentValue - amount)
    }
  }

  complete() {
    this.setPercent(100)
  }

  reset() {
    this.percentValue = 0
    this.valueValue = 0
    this.element.classList.remove("success", "warning", "error", "active")
  }

  // -- Private --

  _update() {
    const percent = Math.max(0, Math.min(100, this.percentValue)).toFixed(this.precisionValue)

    if (this.hasBarTarget) {
      this.barTarget.style.width = `${percent}%`
    }

    if (this.hasLabelTarget) {
      switch (this.labelTypeValue) {
        case "ratio":
          this.labelTarget.textContent = `${this.valueValue} of ${this.totalValue}`
          break
        case "percent":
        default:
          this.labelTarget.textContent = `${percent}%`
          break
      }
    }

    this.element.setAttribute("data-percent", percent)

    if (this.autoSuccessValue && parseFloat(percent) >= 100) {
      this.element.classList.add("success")
    }

    if (this.showActivityValue && parseFloat(percent) < 100 && parseFloat(percent) > 0) {
      this.element.classList.add("active")
    } else {
      this.element.classList.remove("active")
    }

    this.dispatch("change", {
      detail: { percent: parseFloat(percent), value: this.valueValue, total: this.totalValue }
    })
  }
}
