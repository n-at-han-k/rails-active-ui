import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Sticky — stick elements to viewport on scroll.
// Replaces: $.fn.sticky
//
// Usage:
//   <div data-controller="fui-sticky"
//        data-fui-sticky-offset-value="14">
//     <div data-fui-sticky-target="element">
//       This content becomes sticky on scroll
//     </div>
//   </div>
//
export default class extends Controller {
  static targets = ["element", "context"]
  static values = {
    offset:       { type: Number, default: 0 },
    bottomOffset: { type: Number, default: 0 },
    pushing:      { type: Boolean, default: false },
    jitter:       { type: Number, default: 5 },
    setSize:      { type: Boolean, default: true },
  }

  connect() {
    this._onScroll = this._handleScroll.bind(this)
    this._onResize = this._handleResize.bind(this)

    this._scrollContext = window
    this._scrollContext.addEventListener("scroll", this._onScroll, { passive: true })
    this._scrollContext.addEventListener("resize", this._onResize, { passive: true })

    this._cachePositions()
  }

  disconnect() {
    this._scrollContext.removeEventListener("scroll", this._onScroll)
    this._scrollContext.removeEventListener("resize", this._onResize)
    this._unstick()
  }

  refresh() {
    this._cachePositions()
    this._handleScroll()
  }

  reset() {
    this._unstick()
  }

  get isFixed() {
    const el = this._stickyElement
    return el ? el.classList.contains("fixed") : false
  }

  // -- Private --

  get _stickyElement() {
    return this.hasElementTarget ? this.elementTarget : this.element
  }

  _cachePositions() {
    const el = this._stickyElement
    const rect = el.getBoundingClientRect()
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop

    this._originalTop = rect.top + scrollTop
    this._originalWidth = rect.width

    if (this.hasContextTarget) {
      const ctxRect = this.contextTarget.getBoundingClientRect()
      this._contextBottom = ctxRect.bottom + scrollTop - this.bottomOffsetValue
    } else {
      this._contextBottom = Infinity
    }
  }

  _handleScroll() {
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop
    const el = this._stickyElement
    const triggerPoint = this._originalTop - this.offsetValue

    if (scrollTop >= triggerPoint) {
      if (this.hasContextTarget && (scrollTop + el.offsetHeight + this.offsetValue) >= this._contextBottom) {
        this._stickToBottom(el)
      } else {
        this._stick(el)
      }
    } else {
      this._unstick(el)
    }
  }

  _handleResize() {
    this._cachePositions()
    this._handleScroll()
  }

  _stick(el) {
    if (!el) el = this._stickyElement
    if (el.classList.contains("fixed")) return

    if (this.setSizeValue) el.style.width = `${this._originalWidth}px`
    el.classList.add("fixed", "bound")
    el.style.position = "fixed"
    el.style.top = `${this.offsetValue}px`
    this.dispatch("stick")
  }

  _stickToBottom(el) {
    if (!el) el = this._stickyElement
    el.classList.add("bound", "bottom")
    el.classList.remove("fixed")
    el.style.position = "absolute"
    el.style.top = ""
    el.style.bottom = `${this.bottomOffsetValue}px`
    this.dispatch("bottom")
  }

  _unstick(el) {
    if (!el) el = this._stickyElement
    if (!el) return
    el.classList.remove("fixed", "bound", "bottom")
    el.style.position = ""
    el.style.top = ""
    el.style.bottom = ""
    el.style.width = ""
    this.dispatch("unstick")
  }
}
