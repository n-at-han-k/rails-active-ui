# frozen_string_literal: true

# Provides the fui_javascript_tags helper for loading jQuery and
# Fomantic-UI component scripts in the correct order.
#
# Usage (in your application layout, before javascript_importmap_tags):
#
#   <%= fui_javascript_tags %>
#   <%= javascript_importmap_tags %>
#
# This emits <script> tags for jQuery and each Fomantic-UI component.
# The Stimulus bridge controllers are loaded separately via importmap.

module FuiHelper
  # Fomantic component scripts in load order.
  # site and transition must come first — other components depend on them.
  FOMANTIC_SCRIPTS = %w[
    site
    transition
    accordion
    api
    calendar
    checkbox
    dimmer
    dropdown
    embed
    flyout
    form
    modal
    nag
    popup
    progress
    rating
    search
    shape
    sidebar
    slider
    state
    sticky
    tab
    toast
    visibility
  ].freeze

  def fui_javascript_tags
    tags = []
    tags << javascript_include_tag("jquery")
    FOMANTIC_SCRIPTS.each do |name|
      tags << javascript_include_tag(name)
    end
    tags << javascript_include_tag("datatables")
    safe_join(tags, "\n")
  end

  # Renders a DataTables-powered table via Stimulus controller.
  #
  # Generates a <table> with Fomantic-UI styling, wrapped in a <div>
  # annotated with the fui-datatable Stimulus controller. The block
  # should yield <tr> rows for the <tbody>.
  #
  #   datatable(columns: ["Name", "Status"], options: { pageLength: 50 }) do
  #     @records.each do |record|
  #       TableRow {
  #         TableCell { text record.name }
  #         TableCell { text record.status }
  #       }
  #     end
  #   end
  #
  def datatable(columns: [], options: {}, &block)
    options_json = options.to_json

    content_tag(:div,
      data: {
        controller: "fui-datatable",
        "fui-datatable-options-value": options_json
      }
    ) do
      content_tag(:table, class: "ui celled striped table", style: "width:100%") do
        thead = content_tag(:thead) do
          content_tag(:tr) do
            safe_join(columns.map { |col| content_tag(:th, col) })
          end
        end
        tbody = content_tag(:tbody, &block)
        thead + tbody
      end
    end
  end
end
