# frozen_string_literal: true

# Calendar — Fomantic-UI date/time picker container.
#
# Standalone usage (wraps any content — Input, Button, or nothing for inline):
#   Calendar(type: "date") { Input(icon: "calendar", icon_position: "left", placeholder: "Date") }
#   Calendar(type: "datetime") { Button { "Select date" } }
#   Calendar(type: "datetime")  # inline calendar (no input)
#
# Inside a Form, date/time fields render the calendar automatically:
#   Form(url: "#") { DateField(:start_date) }

class CalendarComponent < Component
  attribute :type,     :string,  default: "date"
  attribute :format,   :string,  default: nil
  attribute :min_date, :string,  default: nil
  attribute :max_date, :string,  default: nil
  attribute :inverted, :boolean, default: false
  attribute :disabled, :boolean, default: false
  attribute :size,     :string,  default: nil

  def to_s
    data = { controller: "fui-calendar", fui_calendar_type_value: type }
    data[:fui_calendar_format_value]   = format   if format
    data[:fui_calendar_min_date_value] = min_date if min_date
    data[:fui_calendar_max_date_value] = max_date if max_date

    classes = class_names(
      "ui",
      size,
      ("inverted" if inverted),
      ("disabled" if disabled),
      "calendar"
    )

    tag.div(**merge_html_options(class: classes, data: data)) { @content }
  end
end
