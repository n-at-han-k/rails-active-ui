import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Dropdown — selection dropdowns with search support.
// Replaces: $.fn.dropdown
//
// Usage:
//   <div class="ui selection dropdown" data-controller="fui-dropdown"
//        data-action="click->fui-dropdown#toggle">
//     <input type="hidden" name="field" data-fui-dropdown-target="input">
//     <div class="default text" data-fui-dropdown-target="text">Select...</div>
//     <i class="dropdown icon"></i>
//     <div class="menu" data-fui-dropdown-target="menu">
//       <div class="item" data-value="1" data-action="click->fui-dropdown#select">Option 1</div>
//       <div class="item" data-value="2" data-action="click->fui-dropdown#select">Option 2</div>
//     </div>
//   </div>
//
export default class extends Controller {
  static targets = ["menu", "text", "input", "search"]
  static values = {
    clearable:     { type: Boolean, default: false },
    placeholder:   { type: String, default: "" },
    forceSelection: { type: Boolean, default: false },
    duration:      { type: Number, default: 200 },
  }

  connect() {
    this._onDocumentClick = this._handleDocumentClick.bind(this)
    document.addEventListener("click", this._onDocumentClick)

    this._onKeydown = this._handleKeydown.bind(this)
    this.element.addEventListener("keydown", this._onKeydown)
  }

  disconnect() {
    document.removeEventListener("click", this._onDocumentClick)
    this.element.removeEventListener("keydown", this._onKeydown)
  }

  toggle(event) {
    event.stopPropagation()
    this.isOpen ? this.hide() : this.show()
  }

  show() {
    this.element.classList.add("active", "visible")
    if (this.hasMenuTarget) this.menuTarget.classList.add("visible")
    if (this.hasSearchTarget) this.searchTarget.focus()
    this.dispatch("show")
  }

  hide() {
    this.element.classList.remove("active", "visible")
    if (this.hasMenuTarget) this.menuTarget.classList.remove("visible")
    this.dispatch("hide")
  }

  select(event) {
    event.stopPropagation()
    const item = event.currentTarget
    const value = item.dataset.value
    const text = item.textContent.trim()

    // Remove active from all items
    this._items.forEach((el) => el.classList.remove("active", "selected"))
    item.classList.add("active", "selected")

    if (this.hasInputTarget) this.inputTarget.value = value
    if (this.hasTextTarget) {
      this.textTarget.textContent = text
      this.textTarget.classList.remove("default")
    }

    this.hide()
    this.dispatch("change", { detail: { value, text } })
  }

  clear() {
    if (this.hasInputTarget) this.inputTarget.value = ""
    if (this.hasTextTarget) {
      this.textTarget.textContent = this.placeholderValue || ""
      this.textTarget.classList.add("default")
    }
    this._items.forEach((el) => el.classList.remove("active", "selected"))
    this.dispatch("change", { detail: { value: "", text: "" } })
  }

  get isOpen() {
    return this.element.classList.contains("active")
  }

  get value() {
    return this.hasInputTarget ? this.inputTarget.value : ""
  }

  // -- Private --

  get _items() {
    return this.hasMenuTarget
      ? Array.from(this.menuTarget.querySelectorAll(".item"))
      : []
  }

  _handleDocumentClick(event) {
    if (!this.element.contains(event.target)) {
      this.hide()
    }
  }

  _handleKeydown(event) {
    if (event.key === "Escape") {
      this.hide()
    } else if (event.key === "ArrowDown" || event.key === "ArrowUp") {
      event.preventDefault()
      this._navigateItems(event.key === "ArrowDown" ? 1 : -1)
    } else if (event.key === "Enter") {
      const selected = this.hasMenuTarget && this.menuTarget.querySelector(".item.selected")
      if (selected) {
        event.preventDefault()
        selected.click()
      }
    }
  }

  _navigateItems(direction) {
    const items = this._items.filter((el) => !el.classList.contains("disabled"))
    if (items.length === 0) return

    const current = items.findIndex((el) => el.classList.contains("selected"))
    items.forEach((el) => el.classList.remove("selected"))

    let next = current + direction
    if (next < 0) next = items.length - 1
    if (next >= items.length) next = 0

    items[next].classList.add("selected")
    items[next].scrollIntoView({ block: "nearest" })
  }
}
