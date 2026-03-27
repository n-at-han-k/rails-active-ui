import { Controller } from "@hotwired/stimulus"

// DataTables — searchable, sortable, paginated tables.
// Bridges: DataTable (datatables.net) with Fomantic-UI styling.
//
// Usage:
//   <div data-controller="fui-datatable"
//        data-fui-datatable-options-value='{"pageLength":50}'>
//     <table class="ui celled striped table">
//       <thead><tr><th>Name</th><th>Age</th></tr></thead>
//       <tbody><tr><td>Alice</td><td>30</td></tr></tbody>
//     </table>
//   </div>
//
export default class extends Controller {
  static values = {
    options: { type: Object, default: {} }
  }

  connect() {
    this.dt = new DataTable(this.element.querySelector("table"), {
      pageLength: 25,
      order: [[0, "desc"]],
      language: { search: "Filter:" },
      ...this.optionsValue
    })
  }

  disconnect() {
    if (this.dt) {
      this.dt.destroy()
      this.dt = null
    }
  }
}
