<!--
 Copyright (c) 2025 Nathan Kidd <nathankidd@hey.com>. All rights reserved.
 SPDX-License-Identifier: Proprietary
-->

# Fomantic-UI JavaScript Components

Source: `formantic-ui/components/` (Fomantic-UI v2.9.4)
Stimulus controllers: `app/javascript/ui/controllers/`

This document lists every Fomantic-UI component that ships with interactive
JavaScript behavior, alongside its Stimulus controller replacement.

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

## Controller Scope

Each controller is a **minimal stub** implementing core interactive behavior:

- `connect()` / `disconnect()` lifecycle with proper teardown
- Primary actions (show/hide/toggle/select) via Stimulus `data-action` bindings
- Fomantic-UI CSS class toggling (`active`, `visible`, `hidden`, `animating`, etc.)
- Configurable behavior via Stimulus `values`
- Stimulus `dispatch()` for callbacks (replaces jQuery callbacks like `onChange`, `onShow`, etc.)

Advanced features from the jQuery plugins (remote data loading, complex animation
choreography, nested module resolution, etc.) are not yet implemented. Each
controller can be extended as needed.
