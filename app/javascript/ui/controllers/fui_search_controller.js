import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Search — search with local or remote data sources.
// Replaces: $.fn.search
//
// Usage:
//   <div class="ui search" data-controller="fui-search">
//     <div class="ui input">
//       <input class="prompt" type="text"
//              data-fui-search-target="input"
//              data-action="input->fui-search#query focus->fui-search#showResults">
//     </div>
//     <div class="results" data-fui-search-target="results"></div>
//   </div>
//
export default class extends Controller {
  static targets = ["input", "results"]
  static values = {
    minCharacters:     { type: Number, default: 1 },
    searchDelay:       { type: Number, default: 200 },
    maxResults:        { type: Number, default: 7 },
    showNoResults:     { type: Boolean, default: true },
    url:               { type: String, default: "" },
    searchFields:      { type: Array, default: ["title", "description"] },
    source:            { type: Array, default: [] },
    noResultsMessage:  { type: String, default: "No results found." },
  }

  connect() {
    this._onDocumentClick = this._handleDocumentClick.bind(this)
    document.addEventListener("click", this._onDocumentClick)
  }

  disconnect() {
    document.removeEventListener("click", this._onDocumentClick)
    if (this._debounceTimer) clearTimeout(this._debounceTimer)
  }

  query() {
    if (this._debounceTimer) clearTimeout(this._debounceTimer)
    this._debounceTimer = setTimeout(() => this._performQuery(), this.searchDelayValue)
  }

  showResults() {
    if (this.hasResultsTarget && this.resultsTarget.children.length > 0) {
      this.resultsTarget.classList.add("visible")
    }
  }

  hideResults() {
    if (this.hasResultsTarget) {
      this.resultsTarget.classList.remove("visible")
    }
    this.dispatch("resultsClose")
  }

  selectResult(event) {
    const item = event.currentTarget
    const value = item.dataset.value || item.textContent.trim()

    if (this.hasInputTarget) {
      this.inputTarget.value = value
    }

    this.hideResults()
    this.dispatch("select", { detail: { value, element: item } })
  }

  // -- Private --

  _performQuery() {
    const term = this.hasInputTarget ? this.inputTarget.value.trim() : ""

    if (term.length < this.minCharactersValue) {
      this.hideResults()
      return
    }

    this.dispatch("query", { detail: { query: term } })

    if (this.urlValue) {
      this._searchRemote(term)
    } else if (this.sourceValue.length > 0) {
      this._searchLocal(term)
    }
  }

  _searchLocal(term) {
    const query = term.toLowerCase()
    const results = this.sourceValue
      .filter((item) =>
        this.searchFieldsValue.some((field) =>
          String(item[field] || "").toLowerCase().includes(query)
        )
      )
      .slice(0, this.maxResultsValue)

    this._renderResults(results)
  }

  async _searchRemote(term) {
    this.element.classList.add("loading")
    try {
      const url = new URL(this.urlValue, window.location.origin)
      url.searchParams.set("q", term)
      const response = await fetch(url.toString())
      const data = await response.json()
      const results = (data.results || data).slice(0, this.maxResultsValue)
      this._renderResults(results)
    } catch (e) {
      this._renderResults([])
    } finally {
      this.element.classList.remove("loading")
    }
  }

  _renderResults(results) {
    if (!this.hasResultsTarget) return

    this.resultsTarget.innerHTML = ""

    if (results.length === 0) {
      if (this.showNoResultsValue) {
        const msg = document.createElement("div")
        msg.classList.add("message", "empty")
        msg.innerHTML = `<div class="description">${this._escapeHtml(this.noResultsMessageValue)}</div>`
        this.resultsTarget.appendChild(msg)
      }
    } else {
      results.forEach((item) => {
        const el = document.createElement("a")
        el.classList.add("result")
        el.dataset.value = item.title || ""
        el.dataset.action = "click->fui-search#selectResult"

        const content = document.createElement("div")
        content.classList.add("content")
        const title = document.createElement("div")
        title.classList.add("title")
        title.textContent = item.title || ""
        content.appendChild(title)

        if (item.description) {
          const desc = document.createElement("div")
          desc.classList.add("description")
          desc.textContent = item.description
          content.appendChild(desc)
        }

        el.appendChild(content)
        this.resultsTarget.appendChild(el)
      })
    }

    this.resultsTarget.classList.add("visible")
    this.dispatch("results", { detail: { results } })
  }

  _escapeHtml(text) {
    const div = document.createElement("div")
    div.textContent = text
    return div.innerHTML
  }

  _handleDocumentClick(event) {
    if (!this.element.contains(event.target)) {
      this.hideResults()
    }
  }
}
