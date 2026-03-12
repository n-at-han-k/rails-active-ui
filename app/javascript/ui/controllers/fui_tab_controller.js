import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Tab — tab navigation with content panels.
// Replaces: $.fn.tab
//
// Usage:
//   <div data-controller="fui-tab">
//     <div class="ui tabular menu">
//       <a class="item active" data-fui-tab-target="tab" data-tab="first"
//          data-action="click->fui-tab#activate">First</a>
//       <a class="item" data-fui-tab-target="tab" data-tab="second"
//          data-action="click->fui-tab#activate">Second</a>
//     </div>
//     <div class="ui tab segment active" data-fui-tab-target="panel" data-tab="first">
//       First tab content
//     </div>
//     <div class="ui tab segment" data-fui-tab-target="panel" data-tab="second">
//       Second tab content
//     </div>
//   </div>
//
export default class extends Controller {
  static targets = ["tab", "panel"]
  static values = {
    history:     { type: Boolean, default: false },
    historyType: { type: String, default: "hash" },
  }

  connect() {
    if (this.historyValue && this.historyTypeValue === "hash") {
      this._onHashChange = this._handleHashChange.bind(this)
      window.addEventListener("hashchange", this._onHashChange)

      const hash = window.location.hash.replace("#", "")
      if (hash) this._activateTab(hash)
    }
  }

  disconnect() {
    if (this._onHashChange) {
      window.removeEventListener("hashchange", this._onHashChange)
    }
  }

  activate(event) {
    event.preventDefault()
    const tabPath = event.currentTarget.dataset.tab
    if (!tabPath) return

    this._activateTab(tabPath)

    if (this.historyValue && this.historyTypeValue === "hash") {
      window.location.hash = tabPath
    }
  }

  changeTab(tabPath) {
    this._activateTab(tabPath)
  }

  get activeTab() {
    const active = this.tabTargets.find((t) => t.classList.contains("active"))
    return active ? active.dataset.tab : null
  }

  // -- Private --

  _activateTab(tabPath) {
    // Deactivate all tabs and panels
    this.tabTargets.forEach((tab) => tab.classList.remove("active"))
    this.panelTargets.forEach((panel) => panel.classList.remove("active"))

    // Activate matching tab and panel
    const tab = this.tabTargets.find((t) => t.dataset.tab === tabPath)
    const panel = this.panelTargets.find((p) => p.dataset.tab === tabPath)

    if (tab) tab.classList.add("active")
    if (panel) panel.classList.add("active")

    this.dispatch("change", { detail: { tab: tabPath } })
  }

  _handleHashChange() {
    const hash = window.location.hash.replace("#", "")
    if (hash) this._activateTab(hash)
  }
}
