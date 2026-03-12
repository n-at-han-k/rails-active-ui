import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Form — client-side validation with inline error display.
// Replaces: $.fn.form
//
// Usage:
//   <form data-controller="fui-form"
//         data-fui-form-inline-value="true"
//         data-action="submit->fui-form#validate">
//     <div class="field" data-fui-form-target="field">
//       <label>Email</label>
//       <input type="email" name="email" required>
//     </div>
//     <div class="ui error message" data-fui-form-target="errorMessage"></div>
//   </form>
//
export default class extends Controller {
  static targets = ["field", "errorMessage"]
  static values = {
    inline:    { type: Boolean, default: false },
    on:        { type: String, default: "submit" },
    keyboardShortcuts: { type: Boolean, default: true },
  }

  connect() {
    if (this.onValue === "blur") {
      this.element.querySelectorAll("input, select, textarea").forEach((input) => {
        input.addEventListener("blur", this._validateField.bind(this))
      })
    }
  }

  disconnect() {
    this.element.querySelectorAll("input, select, textarea").forEach((input) => {
      input.removeEventListener("blur", this._validateField.bind(this))
    })
  }

  validate(event) {
    const isValid = this._validateForm()
    if (!isValid) {
      event.preventDefault()
      this.element.classList.add("error")
    } else {
      this.element.classList.remove("error")
    }
  }

  reset() {
    this.element.reset()
    this.element.classList.remove("error", "success", "warning")
    this.fieldTargets.forEach((field) => {
      field.classList.remove("error")
      const prompt = field.querySelector(".prompt")
      if (prompt) prompt.remove()
    })
  }

  // -- Private --

  _validateForm() {
    let valid = true
    this.fieldTargets.forEach((field) => {
      if (!this._validateFieldElement(field)) valid = false
    })
    return valid
  }

  _validateField(event) {
    const field = event.target.closest("[data-fui-form-target='field']")
    if (field) this._validateFieldElement(field)
  }

  _validateFieldElement(field) {
    const input = field.querySelector("input, select, textarea")
    if (!input) return true

    const valid = input.checkValidity()
    if (valid) {
      field.classList.remove("error")
      const prompt = field.querySelector(".prompt")
      if (prompt) prompt.remove()
    } else {
      field.classList.add("error")
      if (this.inlineValue) {
        let prompt = field.querySelector(".prompt")
        if (!prompt) {
          prompt = document.createElement("div")
          prompt.classList.add("ui", "basic", "red", "pointing", "prompt", "label")
          field.appendChild(prompt)
        }
        prompt.textContent = input.validationMessage
      }
    }
    return valid
  }
}
