import { Controller } from "@hotwired/stimulus"

// Fomantic-UI Site — base utility for managing registered module controllers.
// Replaces: $.site
//
// Usage:
//   <body data-controller="fui-site">
//
export default class extends Controller {
  static values = {
    debug: { type: Boolean, default: false },
  }

  connect() {
    this.modules = new Map()

    if (this.debugValue) {
      console.log("[fui-site] connected")
    }
  }

  disconnect() {
    this.modules.clear()
  }

  // Register a child module controller
  registerModule(name, instance) {
    this.modules.set(name, instance)
  }

  // Unregister a child module controller
  unregisterModule(name) {
    this.modules.delete(name)
  }

  // Check if a module is registered
  moduleExists(name) {
    return this.modules.has(name)
  }

  // List all registered module names
  enabledModules() {
    return Array.from(this.modules.keys())
  }
}
