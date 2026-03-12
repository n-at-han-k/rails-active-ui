import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Embed — embedded video/iframe with placeholder.
// Replaces: $.fn.embed
//
// Usage:
//   <div class="ui embed" data-controller="fui-embed"
//        data-fui-embed-source-value="youtube"
//        data-fui-embed-id-value="dQw4w9WgXcQ"
//        data-action="click->fui-embed#show">
//     <i class="video play icon" data-fui-embed-target="icon"></i>
//     <img class="placeholder" data-fui-embed-target="placeholder">
//     <div class="embed" data-fui-embed-target="container"></div>
//   </div>
//
export default class extends Controller {
  static targets = ["placeholder", "icon", "container"]
  static values = {
    source:   { type: String, default: "" },
    id:       { type: String, default: "" },
    url:      { type: String, default: "" },
    autoplay: { type: Boolean, default: true },
    color:    { type: String, default: "#444" },
    hd:       { type: Boolean, default: true },
  }

  connect() {}
  disconnect() {}

  show() {
    const url = this._buildUrl()
    if (!url) return

    if (this.hasContainerTarget) {
      const iframe = document.createElement("iframe")
      iframe.src = url
      iframe.width = "100%"
      iframe.height = "100%"
      iframe.frameBorder = "0"
      iframe.allowFullscreen = true
      iframe.allow = "autoplay; encrypted-media"
      this.containerTarget.innerHTML = ""
      this.containerTarget.appendChild(iframe)
    }

    if (this.hasPlaceholderTarget) this.placeholderTarget.style.display = "none"
    if (this.hasIconTarget) this.iconTarget.style.display = "none"
    this.element.classList.add("active")
    this.dispatch("display")
  }

  reset() {
    if (this.hasContainerTarget) this.containerTarget.innerHTML = ""
    if (this.hasPlaceholderTarget) this.placeholderTarget.style.display = ""
    if (this.hasIconTarget) this.iconTarget.style.display = ""
    this.element.classList.remove("active")
    this.dispatch("reset")
  }

  // -- Private --

  _buildUrl() {
    if (this.urlValue) return this.urlValue

    const id = this.idValue
    if (!id) return null

    const autoplay = this.autoplayValue ? 1 : 0

    switch (this.sourceValue) {
      case "youtube":
        return `https://www.youtube.com/embed/${id}?autoplay=${autoplay}&hd=${this.hdValue ? 1 : 0}&color=${encodeURIComponent(this.colorValue)}`
      case "vimeo":
        return `https://player.vimeo.com/video/${id}?autoplay=${autoplay}&color=${encodeURIComponent(this.colorValue)}`
      default:
        return null
    }
  }
}
