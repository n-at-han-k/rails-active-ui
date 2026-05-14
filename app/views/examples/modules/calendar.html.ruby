# ── Types ──

Header { "Calendar" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DatetimeLocalField(:standard_calendar, placeholder: "Date/Time")
  }
}

Header { "Range" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    FieldsGroup {
      DateField(:range_start, label: "Start date", placeholder: "Start", field: true)
      DateField(:range_end, label: "End date", placeholder: "End", field: true)
    }
  }
}

Header { "Inline Calendar" }
Wrapper(style: "contain: layout style;") {
  Calendar(type: "datetime")
}

# ── Variations ──

Header { "Size" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DatetimeLocalField(:tiny_cal, placeholder: "Date/Time", calendar_size: "tiny")
    DatetimeLocalField(:medium_cal, placeholder: "Date/Time", calendar_size: "medium")
    DatetimeLocalField(:big_cal, placeholder: "Date/Time", calendar_size: "big")
  }
}

Header { "Inverted" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DatetimeLocalField(:inverted_cal, placeholder: "Date/Time", inverted: true)
  }
}

Header { "Multimonth" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:multimonth_cal, placeholder: "Date")
  }
}

# ── States ──

Header { "Disabled" }
Wrapper(style: "contain: layout style;") {
  Calendar(type: "datetime", disabled: true) {
    Input(icon: "calendar", icon_position: "left", placeholder: "Date/Time", disabled: true)
  }
}

# ── Examples ──

Header { "Date Calendar" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:date_cal, placeholder: "Date")
  }
}

Header { "Time Calendar" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    TimeField(:time_cal, placeholder: "Time", icon: "time")
  }
}

Header { "Year First Calendar" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:year_first_cal, placeholder: "Date")
  }
}

Header { "24 Hour Format" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    TimeField(:no_ampm, placeholder: "Time", icon: "time", calendar_format: "H:mm")
  }
}

Header { "Month and Year Calendar" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    MonthField(:month_year_cal, placeholder: "Date", calendar_type: "month")
  }
}

Header { "Year Calendar" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:year_cal, placeholder: "Date", calendar_type: "year")
  }
}

Header { "Min/Max Date" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DatetimeLocalField(:minmax_cal, placeholder: "Date",
      min_date: "2024-01-01", max_date: "2024-12-31")
  }
}

Header { "Day First Calendar" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:day_first_cal, placeholder: "Date")
  }
}

Header { "Custom Format" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:token_format_cal, placeholder: "Date", calendar_format: "YYYY-MM-DD")
  }
}

Header { "Select Adjacent Days" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:adjacent_cal, placeholder: "Date")
  }
}

Header { "Language" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DatetimeLocalField(:french_cal, placeholder: "Date/Time")
  }
}

# ── Coupling ──

Header { "Button" }
Wrapper(style: "contain: layout style;") {
  Calendar(type: "datetime") {
    Button { "Select date" }
  }
}

# ── Disabling specific Days ──

Header { "Disabled Days of Week" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:disabled_dow_cal, placeholder: "Date")
  }
}

Header { "Disabled Single Dates" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:disabled_dates_cal, placeholder: "Date")
  }
}

Header { "Disabled Hours" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DatetimeLocalField(:disabled_hours_cal, placeholder: "Date")
  }
}

Header { "Disabled Whole Months" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:disabled_month_cal, placeholder: "Date")
  }
}

Header { "Disabled Whole Years" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:disabled_year_cal, placeholder: "Date")
  }
}

Header { "Enable Only Specific Dates" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:enabled_dates_cal, placeholder: "Date")
  }
}

# ── Highlighting specific Days ──

Header { "Event Dates" }
Wrapper(style: "contain: layout style;") {
  Form(url: "#") {
    DateField(:event_dates_cal, placeholder: "Date")
  }
}
