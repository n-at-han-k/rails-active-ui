import { Application } from "@hotwired/stimulus"
import { registerFuiControllers } from "ui"

const application = Application.start()
registerFuiControllers(application)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
