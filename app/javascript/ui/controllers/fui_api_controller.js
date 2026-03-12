import { Controller } from "@hotwired/stimulus"

// Fomantic-UI API — AJAX request management with state toggling.
// Replaces: $.fn.api
//
// Usage:
//   <button data-controller="fui-api"
//           data-fui-api-url-value="/api/items"
//           data-fui-api-method-value="get"
//           data-action="click->fui-api#query">
//     Load Items
//   </button>
//
//   <!-- Or on a form: -->
//   <form data-controller="fui-api"
//         data-fui-api-url-value="/api/submit"
//         data-fui-api-method-value="post"
//         data-fui-api-serialize-form-value="true"
//         data-action="submit->fui-api#query">
//     ...
//   </form>
//
export default class extends Controller {
  static values = {
    url:             { type: String, default: "" },
    method:          { type: String, default: "get" },
    dataType:        { type: String, default: "json" },
    serializeForm:   { type: Boolean, default: false },
    cache:           { type: Boolean, default: false },
    loadingDuration: { type: Number, default: 0 },
    errorDuration:   { type: Number, default: 2000 },
    throttle:        { type: Number, default: 0 },
  }

  connect() {
    this._cache = new Map()
    this._abortController = null
    this._lastRequestTime = 0
  }

  disconnect() {
    this.abort()
    this._cache.clear()
  }

  async query(event) {
    if (event) event.preventDefault()

    const url = this.urlValue
    if (!url) return

    // Throttle
    const now = Date.now()
    if (this.throttleValue > 0 && (now - this._lastRequestTime) < this.throttleValue) return
    this._lastRequestTime = now

    // Check cache
    if (this.cacheValue && this._cache.has(url)) {
      this.dispatch("success", { detail: { response: this._cache.get(url), cached: true } })
      return
    }

    this.abort()
    this._abortController = new AbortController()

    this._setLoading()
    this.dispatch("request")

    try {
      const options = {
        method: this.methodValue.toUpperCase(),
        signal: this._abortController.signal,
        headers: {},
      }

      if (this.serializeFormValue && this.element.tagName === "FORM") {
        const formData = new FormData(this.element)
        if (this.methodValue.toLowerCase() === "get") {
          const params = new URLSearchParams(formData)
          options.url = `${url}?${params.toString()}`
        } else {
          options.body = formData
        }
      }

      const csrfToken = document.querySelector('meta[name="csrf-token"]')?.content
      if (csrfToken) options.headers["X-CSRF-Token"] = csrfToken

      const response = await fetch(options.url || url, options)

      if (!response.ok) throw new Error(`${response.status} ${response.statusText}`)

      let data
      if (this.dataTypeValue === "json") {
        data = await response.json()
      } else {
        data = await response.text()
      }

      if (this.cacheValue) this._cache.set(url, data)

      this._removeLoading()
      this.dispatch("success", { detail: { response: data, cached: false } })
      this.dispatch("complete", { detail: { response: data } })
    } catch (error) {
      if (error.name === "AbortError") {
        this.dispatch("abort", { detail: { error: error.message } })
      } else {
        this._setError()
        this.dispatch("failure", { detail: { error: error.message } })
        this.dispatch("complete", { detail: { error: error.message } })

        if (this.errorDurationValue > 0) {
          setTimeout(() => this._removeError(), this.errorDurationValue)
        }
      }
      this._removeLoading()
    }
  }

  abort() {
    if (this._abortController) {
      this._abortController.abort()
      this._abortController = null
    }
  }

  clearCache() {
    this._cache.clear()
  }

  get isLoading() {
    return this.element.classList.contains("loading")
  }

  // -- Private --

  _setLoading() {
    this.element.classList.add("loading")
    this.element.classList.remove("error")
  }

  _removeLoading() {
    if (this.loadingDurationValue > 0) {
      setTimeout(() => this.element.classList.remove("loading"), this.loadingDurationValue)
    } else {
      this.element.classList.remove("loading")
    }
  }

  _setError() {
    this.element.classList.add("error")
  }

  _removeError() {
    this.element.classList.remove("error")
  }
}
