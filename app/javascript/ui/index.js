// Fomantic-UI Stimulus Controllers
//
// Registers all 25 Fomantic-UI Stimulus controllers with a Stimulus application.
//
// Usage (in your app's JavaScript entry point):
//
//   import { Application } from "@hotwired/stimulus"
//   import { registerFuiControllers } from "ui"
//
//   const application = Application.start()
//   registerFuiControllers(application)
//

// Globals
import FuiSiteController from "./controllers/fui_site_controller"

// Collections
import FuiFormController from "./controllers/fui_form_controller"

// Modules
import FuiAccordionController from "./controllers/fui_accordion_controller"
import FuiCalendarController from "./controllers/fui_calendar_controller"
import FuiCheckboxController from "./controllers/fui_checkbox_controller"
import FuiDimmerController from "./controllers/fui_dimmer_controller"
import FuiDropdownController from "./controllers/fui_dropdown_controller"
import FuiEmbedController from "./controllers/fui_embed_controller"
import FuiFlyoutController from "./controllers/fui_flyout_controller"
import FuiModalController from "./controllers/fui_modal_controller"
import FuiNagController from "./controllers/fui_nag_controller"
import FuiPopupController from "./controllers/fui_popup_controller"
import FuiProgressController from "./controllers/fui_progress_controller"
import FuiSliderController from "./controllers/fui_slider_controller"
import FuiRatingController from "./controllers/fui_rating_controller"
import FuiSearchController from "./controllers/fui_search_controller"
import FuiShapeController from "./controllers/fui_shape_controller"
import FuiSidebarController from "./controllers/fui_sidebar_controller"
import FuiStickyController from "./controllers/fui_sticky_controller"
import FuiTabController from "./controllers/fui_tab_controller"
import FuiToastController from "./controllers/fui_toast_controller"
import FuiTransitionController from "./controllers/fui_transition_controller"

// Behaviors
import FuiApiController from "./controllers/fui_api_controller"
import FuiStateController from "./controllers/fui_state_controller"
import FuiVisibilityController from "./controllers/fui_visibility_controller"

const controllers = {
  "fui-site":       FuiSiteController,
  "fui-form":       FuiFormController,
  "fui-accordion":  FuiAccordionController,
  "fui-calendar":   FuiCalendarController,
  "fui-checkbox":   FuiCheckboxController,
  "fui-dimmer":     FuiDimmerController,
  "fui-dropdown":   FuiDropdownController,
  "fui-embed":      FuiEmbedController,
  "fui-flyout":     FuiFlyoutController,
  "fui-modal":      FuiModalController,
  "fui-nag":        FuiNagController,
  "fui-popup":      FuiPopupController,
  "fui-progress":   FuiProgressController,
  "fui-slider":     FuiSliderController,
  "fui-rating":     FuiRatingController,
  "fui-search":     FuiSearchController,
  "fui-shape":      FuiShapeController,
  "fui-sidebar":    FuiSidebarController,
  "fui-sticky":     FuiStickyController,
  "fui-tab":        FuiTabController,
  "fui-toast":      FuiToastController,
  "fui-transition": FuiTransitionController,
  "fui-api":        FuiApiController,
  "fui-state":      FuiStateController,
  "fui-visibility": FuiVisibilityController,
}

export function registerFuiControllers(application) {
  for (const [identifier, controllerClass] of Object.entries(controllers)) {
    application.register(identifier, controllerClass)
  }
}

// Also export individual controllers for selective registration
export {
  FuiSiteController,
  FuiFormController,
  FuiAccordionController,
  FuiCalendarController,
  FuiCheckboxController,
  FuiDimmerController,
  FuiDropdownController,
  FuiEmbedController,
  FuiFlyoutController,
  FuiModalController,
  FuiNagController,
  FuiPopupController,
  FuiProgressController,
  FuiSliderController,
  FuiRatingController,
  FuiSearchController,
  FuiShapeController,
  FuiSidebarController,
  FuiStickyController,
  FuiTabController,
  FuiToastController,
  FuiTransitionController,
  FuiApiController,
  FuiStateController,
  FuiVisibilityController,
}
