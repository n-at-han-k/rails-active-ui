import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Visibility — scroll-based visibility detection via IntersectionObserver.
// Replaces: $.fn.visibility
//
// Usage:
//   <div data-controller="fui-visibility"
//        data-fui-visibility-once-value="true"
//        data-fui-visibility-offset-value="100">
//     <img data-fui-visibility-target="lazy" data-src="/images/photo.jpg">
//   </div>
//
export default class extends Controller {
  static targets = ["lazy"]
  static values = {
    once:            { type: Boolean, default: true },
    continuous:      { type: Boolean, default: false },
    offset:          { type: Number, default: 0 },
    type:            { type: String, default: "" },
    throttle:        { type: Number, default: 0 },
  }

  connect() {
    const rootMargin = `${this.offsetValue}px`

    this._observer = new IntersectionObserver(
      (entries) => this._handleIntersection(entries),
      { rootMargin, threshold: [0, 0.25, 0.5, 0.75, 1.0] }
    )

    this._observer.observe(this.element)
    this._wasVisible = false
    this._occurred = new Set()

    // Lazy image loading
    if (this.typeValue === "image") {
      this.lazyTargets.forEach((img) => {
        this._observer.observe(img)
      })
    }
  }

  disconnect() {
    if (this._observer) {
      this._observer.disconnect()
      this._observer = null
    }
  }

  disable() {
    if (this._observer) this._observer.disconnect()
  }

  enable() {
    if (this._observer) this._observer.observe(this.element)
  }

  refresh() {
    this.disable()
    this.enable()
  }

  // -- Private --

  _handleIntersection(entries) {
    entries.forEach((entry) => {
      // Handle lazy images
      if (this.typeValue === "image" && entry.target !== this.element) {
        if (entry.isIntersecting) {
          this._loadImage(entry.target)
          this._observer.unobserve(entry.target)
        }
        return
      }

      const isVisible = entry.isIntersecting
      const ratio = entry.intersectionRatio

      if (isVisible && !this._wasVisible) {
        this._fireOnce("onScreen")
        this.dispatch("onScreen")
      }

      if (!isVisible && this._wasVisible) {
        this._fireOnce("offScreen")
        this.dispatch("offScreen")
      }

      if (isVisible) {
        // Top visible
        if (entry.boundingClientRect.top >= 0 && ratio > 0) {
          this._fireOnce("topVisible")
          this.dispatch("topVisible")
        }

        // Bottom visible
        if (entry.boundingClientRect.bottom <= window.innerHeight && ratio > 0) {
          this._fireOnce("bottomVisible")
          this.dispatch("bottomVisible")
        }

        // Fully passing (entirely within viewport)
        if (ratio >= 1) {
          this._fireOnce("passing")
          this.dispatch("passing")
        }
      }

      this._wasVisible = isVisible
    })
  }

  _fireOnce(eventName) {
    if (this.onceValue && this._occurred.has(eventName)) return
    this._occurred.add(eventName)
  }

  _loadImage(img) {
    const src = img.dataset.src
    if (!src) return

    if (img.tagName === "IMG") {
      img.src = src
    } else {
      img.style.backgroundImage = `url(${src})`
    }
    img.removeAttribute("data-src")
    this.dispatch("imageLoad", { target: img })
  }
}
