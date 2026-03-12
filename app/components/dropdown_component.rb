# frozen_string_literal: true

# Dropdown — selection dropdowns with search and multi-select.
#
# Usage:
#   Dropdown(selection: true, placeholder: "Select...", name: "country") {
#     text '<div class="item" data-value="us" data-action="click->fui-dropdown#select">United States</div>'.html_safe
#     text '<div class="item" data-value="ca" data-action="click->fui-dropdown#select">Canada</div>'.html_safe
#   }

class DropdownComponent < Component
  attribute :selection,     :boolean, default: false
  attribute :search,        :boolean, default: false
  attribute :multiple,      :boolean, default: false
  attribute :clearable,     :boolean, default: false
  attribute :fluid,         :boolean, default: false
  attribute :placeholder,   :string,  default: nil
  attribute :name,          :string,  default: nil
  attribute :default_value, :string,  default: nil
  attribute :pointing,      :string,  default: nil
  attribute :compact,       :boolean, default: false
  attribute :scrolling,     :boolean, default: false
  attribute :inline,        :boolean, default: false
  attribute :floating,      :boolean, default: false
  attribute :button,        :boolean, default: false
  attribute :labeled,       :boolean, default: false
  attribute :loading,       :boolean, default: false
  attribute :disabled,      :boolean, default: false

  def to_s
    classes = [
      "ui",
      ("selection" if selection),
      ("search" if search),
      ("multiple" if multiple),
      ("clearable" if clearable),
      ("fluid" if fluid),
      ("compact" if compact),
      ("scrolling" if scrolling),
      ("inline" if inline),
      ("floating" if floating),
      ("button" if button),
      ("labeled" if labeled),
      ("loading" if loading),
      ("disabled" if disabled),
      (pointing && "#{pointing} pointing"),
      "dropdown"
    ].compact.join(" ")

    data = { controller: "fui-dropdown", action: "click->fui-dropdown#toggle" }
    data[:fui_dropdown_clearable_value] = "true" if clearable
    data[:fui_dropdown_placeholder_value] = placeholder if placeholder

    hidden_opts = { type: "hidden", value: default_value || "", data: { fui_dropdown_target: "input" } }
    hidden_opts[:name] = name if name

    search_el = search ? tag.input(class: "search", data: { fui_dropdown_target: "search" }) : nil
    text_el = tag.div(class: "default text", data: { fui_dropdown_target: "text" }) { placeholder || "" }
    menu_el = tag.div(class: "menu", data: { fui_dropdown_target: "menu" }) { @content }

    tag.div(class: classes, data: data) {
      safe_join([
        tag.input(**hidden_opts),
        search_el,
        text_el,
        tag.i(class: "dropdown icon"),
        menu_el
      ])
    }
  end
end
