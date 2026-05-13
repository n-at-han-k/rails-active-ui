<!--
 Copyright (c) 2025 Nathan Kidd <nathankidd@hey.com>. All rights reserved.
 SPDX-License-Identifier: Proprietary
-->

# Fomantic-UI JavaScript Components

Source: `app/javascript/` (Fomantic-UI v2.9.4 individual component JS files)
Stimulus controllers: `app/javascript/ui/controllers/`

This document describes how Fomantic-UI's interactive JavaScript components are
integrated with Rails 8's Hotwire stack via a **jQuery bridge** pattern.

---

## Architecture

Each Fomantic-UI component that has interactive JavaScript behavior is paired
with a thin Stimulus controller that acts as a **lifecycle bridge**:

- **Stimulus** handles DOM lifecycle — `connect()` fires when the element enters
  the DOM (including after Turbo Drive navigation), `disconnect()` fires when it
  leaves. This solves the classic jQuery/Turbo incompatibility.
- **jQuery + Fomantic-UI** handles the actual widget behavior — event binding,
  DOM manipulation, animations, keyboard handling, accessibility, etc.

```
┌─────────────────────────────────────────────┐
│  Stimulus Controller (lifecycle bridge)      │
│                                              │
│  connect()    → $(el).dropdown(options)      │
│  disconnect() → $(el).dropdown("destroy")    │
│  show()       → $(el).dropdown("show")       │
│  hide()       → $(el).dropdown("hide")       │
│                                              │
│  Fomantic callbacks → this.dispatch(...)     │
└─────────────────────────────────────────────┘
```

### Why this approach

Fomantic-UI's jQuery plugins are battle-tested, feature-complete implementations
with hundreds of options, keyboard navigation, ARIA support, animations, and
edge-case handling. Reimplementing all of that in vanilla JS Stimulus controllers
would be a massive effort with no real payoff. Instead, we use Stimulus purely
for what it's good at (lifecycle management in a Turbo world) and let Fomantic
do what it's good at (widget behavior).

---

## Prerequisites

jQuery and the Fomantic-UI component JS files must be loaded globally before the
Stimulus controllers are used. The load order is:

1. **jQuery** (`app/javascript/jquery.min.js`) — provides `$` / `jQuery` globally
2. **Fomantic-UI site** (`app/javascript/site.js`) — base module, must load first
3. **Fomantic-UI components** (`app/javascript/*.js`) — individual component files
4. **Stimulus controllers** — registered via `registerFuiControllers(application)`

The Fomantic-UI JS files are IIFE-style scripts (`(function($, window, document) {...})(jQuery, window, document)`)
that expect `jQuery` on the global scope. They are served via the Rails asset
pipeline (Propshaft) and loaded via `<script>` tags in the application layout.

The Stimulus controllers are ESM modules imported via importmap.

---

## Registration

All controllers are registered via the barrel file at `app/javascript/ui/index.js`.

```javascript
import { Application } from "@hotwired/stimulus"
import { registerFuiControllers } from "ui"

const application = Application.start()
registerFuiControllers(application)
```

Individual controllers can also be imported selectively:

```javascript
import { FuiDropdownController } from "ui"
application.register("fui-dropdown", FuiDropdownController)
```

---

## Controller Pattern

Every controller follows the same pattern:

```javascript
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    // Configuration options passed from Ruby components
    // via data-fui-*-*-value attributes
  }

  connect() {
    // Initialize the Fomantic jQuery plugin with options
    $(this.element).pluginName(this._options())
  }

  disconnect() {
    // Clean up the plugin
    $(this.element).pluginName("destroy")
  }

  // Public API methods delegate to Fomantic
  show()   { $(this.element).pluginName("show") }
  hide()   { $(this.element).pluginName("hide") }
  toggle() { $(this.element).pluginName("toggle") }

  // -- Private --

  _options() {
    return {
      // Map Stimulus values to Fomantic options
      optionName: this.optionNameValue,
      // Bridge Fomantic callbacks to Stimulus events
      onChange: (value) => {
        this.dispatch("change", { detail: { value } })
      },
    }
  }
}
```

Key conventions:
- **No targets** — Fomantic uses CSS class conventions (`.menu`, `.item`, `.text`, etc.)
  to find child elements. Stimulus targets are unnecessary.
- **No data-action** — Fomantic's jQuery plugins bind their own events (click, keydown,
  hover, etc.). Stimulus data-action attributes are unnecessary for the core widget
  behavior. They may still be used for custom application-level actions.
- **Stimulus values** — Used to pass configuration from Ruby components to the JS plugin.
  The Ruby component emits `data-fui-*-*-value` attributes, and the controller reads
  them via `this.*Value`.
- **Stimulus dispatch** — Fomantic callbacks (onShow, onChange, etc.) are bridged to
  Stimulus custom events via `this.dispatch()`, allowing parent controllers or
  application code to listen for component events.

---

## Globals

| Component | jQuery plugin | Stimulus controller | File |
|-----------|---------------|---------------------|------|
| **Site** | `$.site` | `fui-site` | `fui_site_controller.js` |

## Collections

| Component | jQuery plugin | Stimulus controller | File |
|-----------|---------------|---------------------|------|
| **Form** | `$.fn.form` | `fui-form` | `fui_form_controller.js` |

## Modules

| Component | jQuery plugin | Stimulus controller | File |
|-----------|---------------|---------------------|------|
| **Accordion** | `$.fn.accordion` | `fui-accordion` | `fui_accordion_controller.js` |
| **Calendar** | `$.fn.calendar` | `fui-calendar` | `fui_calendar_controller.js` |
| **Checkbox** | `$.fn.checkbox` | `fui-checkbox` | `fui_checkbox_controller.js` |
| **Dimmer** | `$.fn.dimmer` | `fui-dimmer` | `fui_dimmer_controller.js` |
| **Dropdown** | `$.fn.dropdown` | `fui-dropdown` | `fui_dropdown_controller.js` |
| **Embed** | `$.fn.embed` | `fui-embed` | `fui_embed_controller.js` |
| **Flyout** | `$.fn.flyout` | `fui-flyout` | `fui_flyout_controller.js` |
| **Modal** | `$.fn.modal` | `fui-modal` | `fui_modal_controller.js` |
| **Nag** | `$.fn.nag` | `fui-nag` | `fui_nag_controller.js` |
| **Popup** | `$.fn.popup` | `fui-popup` | `fui_popup_controller.js` |
| **Progress** | `$.fn.progress` | `fui-progress` | `fui_progress_controller.js` |
| **Slider** | `$.fn.slider` | `fui-slider` | `fui_slider_controller.js` |
| **Rating** | `$.fn.rating` | `fui-rating` | `fui_rating_controller.js` |
| **Search** | `$.fn.search` | `fui-search` | `fui_search_controller.js` |
| **Shape** | `$.fn.shape` | `fui-shape` | `fui_shape_controller.js` |
| **Sidebar** | `$.fn.sidebar` | `fui-sidebar` | `fui_sidebar_controller.js` |
| **Sticky** | `$.fn.sticky` | `fui-sticky` | `fui_sticky_controller.js` |
| **Tab** | `$.fn.tab` | `fui-tab` | `fui_tab_controller.js` |
| **Toast** | `$.fn.toast` | `fui-toast` | `fui_toast_controller.js` |
| **Transition** | `$.fn.transition` | `fui-transition` | `fui_transition_controller.js` |

## Behaviors

JavaScript-only utilities -- no dedicated CSS.

| Component | jQuery plugin | Stimulus controller | File |
|-----------|---------------|---------------------|------|
| **API** | `$.fn.api` | `fui-api` | `fui_api_controller.js` |
| **State** | `$.fn.state` | `fui-state` | `fui_state_controller.js` |
| **Visibility** | `$.fn.visibility` | `fui-visibility` | `fui_visibility_controller.js` |

---

## Asset Layout

```
app/javascript/
├── jquery.js                    # jQuery 3.7.1 (development)
├── jquery.min.js                # jQuery 3.7.1 (production)
├── site.js                      # Fomantic-UI site (must load first)
├── accordion.js                 # Fomantic-UI accordion
├── calendar.js                  # Fomantic-UI calendar
├── checkbox.js                  # ...
├── dimmer.js
├── dropdown.js
├── embed.js
├── flyout.js
├── form.js
├── modal.js
├── nag.js
├── popup.js
├── progress.js
├── rating.js
├── search.js
├── shape.js
├── sidebar.js
├── slider.js
├── state.js
├── sticky.js
├── tab.js
├── toast.js
├── transition.js
├── visibility.js
├── api.js
└── ui/
    ├── index.js                 # Barrel file — registers all controllers
    └── controllers/
        ├── fui_site_controller.js
        ├── fui_form_controller.js
        ├── fui_accordion_controller.js
        ├── fui_calendar_controller.js
        ├── fui_checkbox_controller.js
        ├── fui_dimmer_controller.js
        ├── fui_dropdown_controller.js
        ├── fui_embed_controller.js
        ├── fui_flyout_controller.js
        ├── fui_modal_controller.js
        ├── fui_nag_controller.js
        ├── fui_popup_controller.js
        ├── fui_progress_controller.js
        ├── fui_slider_controller.js
        ├── fui_rating_controller.js
        ├── fui_search_controller.js
        ├── fui_shape_controller.js
        ├── fui_sidebar_controller.js
        ├── fui_sticky_controller.js
        ├── fui_tab_controller.js
        ├── fui_toast_controller.js
        ├── fui_transition_controller.js
        ├── fui_api_controller.js
        ├── fui_state_controller.js
        └── fui_visibility_controller.js
```
