# frozen_string_literal: true

# Popup — tooltips and popup content.
#
# Usage:
#   Popup(content: "Tooltip text", position: "top center") {
#     Button { text "Hover me" }
#   }
#   Popup(hoverable: true) { text "Hover for popup" }

class PopupComponent < Component
  attribute :content,   :string,  default: nil
  attribute :title,     :string,  default: nil
  attribute :position,  :string,  default: "top center"
  attribute :variation, :string,  default: nil
  attribute :hoverable, :boolean, default: false
  attribute :on,        :string,  default: "hover"

  def to_s
    data = { controller: "fui-popup", fui_popup_position_value: position }
    data[:fui_popup_content_value] = content if content
    data[:fui_popup_title_value] = title if title
    data[:fui_popup_hoverable_value] = "true" if hoverable
    data[:fui_popup_variation_value] = variation if variation
    data[:action] = action_string

    tag.span(data: data) { @content }
  end

  private

  def action_string
    case on
    when "hover" then "mouseenter->fui-popup#show mouseleave->fui-popup#hide"
    when "click" then "click->fui-popup#toggle"
    when "focus" then "focus->fui-popup#show blur->fui-popup#hide"
    end
  end
end
