# frozen_string_literal: true

require "test_helper"

class FormComponentsTest < ComponentTestCase
  # --- FormComponent ---

  test "form renders with default classes" do
    html = render_inline(FormComponent)
    assert_includes html, "ui form"
    assert_includes html, "<form"
  end

  test "form has stimulus controller" do
    html = render_inline(FormComponent)
    assert_includes html, "fui-form"
  end

  test "form with action and method" do
    html = render_inline(FormComponent, action: "/submit", method_type: "post")
    assert_includes html, 'action="/submit"'
    assert_includes html, 'method="post"'
  end

  test "form loading" do
    html = render_inline(FormComponent, loading: true)
    assert_includes html, "loading"
  end

  test "form error state" do
    html = render_inline(FormComponent, error: true)
    assert_includes html, "error"
  end

  test "form equal width" do
    html = render_inline(FormComponent, equal_width: true)
    assert_includes html, "equal width"
  end

  test "form size" do
    html = render_inline(FormComponent, size: "large")
    assert_includes html, "large"
  end

  # --- InputComponent ---

  test "input renders with default classes" do
    html = render_inline(InputComponent)
    assert_includes html, "ui input"
    assert_includes html, 'type="text"'
  end

  test "input with icon" do
    html = render_inline(InputComponent, icon: "search")
    assert_includes html, "icon"
    assert_includes html, 'class="search icon"'
  end

  test "input with left icon" do
    html = render_inline(InputComponent, icon: "users", icon_position: "left")
    assert_includes html, "left icon"
  end

  test "input with placeholder" do
    html = render_inline(InputComponent, placeholder: "Search...")
    assert_includes html, 'placeholder="Search..."'
  end

  test "input disabled" do
    html = render_inline(InputComponent, disabled: true)
    assert_includes html, "disabled"
  end

  test "input fluid" do
    html = render_inline(InputComponent, fluid: true)
    assert_includes html, "fluid"
  end

  test "input with name and value" do
    html = render_inline(InputComponent, name: "q", value: "hello")
    assert_includes html, 'name="q"'
    assert_includes html, 'value="hello"'
  end

  # --- CheckboxComponent ---

  test "checkbox renders with default classes" do
    html = render_inline(CheckboxComponent)
    assert_includes html, "ui checkbox"
    assert_includes html, 'type="checkbox"'
  end

  test "checkbox has stimulus controller" do
    html = render_inline(CheckboxComponent)
    assert_includes html, "fui-checkbox"
  end

  test "checkbox toggle type" do
    html = render_inline(CheckboxComponent, type: "toggle")
    assert_includes html, "toggle"
  end

  test "checkbox radio type renders radio input" do
    html = render_inline(CheckboxComponent, type: "radio")
    assert_includes html, 'type="radio"'
  end

  test "checkbox with label" do
    html = render_inline(CheckboxComponent, label_text: "Accept terms")
    assert_includes html, "Accept terms"
    assert_includes html, "<label"
  end

  test "checkbox checked" do
    html = render_inline(CheckboxComponent, checked: true)
    assert_includes html, 'checked="checked"'
  end

  test "checkbox with name and value" do
    html = render_inline(CheckboxComponent, name: "terms", value: "yes")
    assert_includes html, 'name="terms"'
    assert_includes html, 'value="yes"'
  end

  # --- DropdownComponent ---

  test "dropdown renders with default classes" do
    html = render_inline(DropdownComponent)
    assert_includes html, "ui dropdown"
  end

  test "dropdown has stimulus controller" do
    html = render_inline(DropdownComponent)
    assert_includes html, "fui-dropdown"
  end

  test "dropdown selection" do
    html = render_inline(DropdownComponent, selection: true)
    assert_includes html, "selection"
  end

  test "dropdown search adds search input" do
    html = render_inline(DropdownComponent, search: true)
    assert_includes html, "search"
    assert_includes html, 'class="search"'
  end

  test "dropdown with placeholder" do
    html = render_inline(DropdownComponent, placeholder: "Pick one")
    assert_includes html, "Pick one"
  end

  test "dropdown with name" do
    html = render_inline(DropdownComponent, name: "country")
    assert_includes html, 'name="country"'
  end

  test "dropdown multiple" do
    html = render_inline(DropdownComponent, multiple: true)
    assert_includes html, "multiple"
  end

  test "dropdown has menu element" do
    html = render_inline(DropdownComponent)
    assert_includes html, 'class="menu"'
  end

  test "dropdown has hidden input" do
    html = render_inline(DropdownComponent)
    assert_includes html, 'type="hidden"'
  end

  # --- CalendarComponent ---

  test "calendar renders with default classes" do
    html = render_inline(CalendarComponent)
    assert_includes html, "ui calendar"
  end

  test "calendar has stimulus controller" do
    html = render_inline(CalendarComponent)
    assert_includes html, "fui-calendar"
  end

  test "calendar type value" do
    html = render_inline(CalendarComponent, type: "datetime")
    assert_includes html, "datetime"
  end

  test "calendar with name" do
    html = render_inline(CalendarComponent, name: "start_date")
    assert_includes html, 'name="start_date"'
  end

  test "calendar has icon and input" do
    html = render_inline(CalendarComponent)
    assert_includes html, "calendar icon"
    assert_includes html, 'type="text"'
  end

  # --- SliderComponent ---

  test "slider renders with default classes" do
    html = render_inline(SliderComponent)
    assert_includes html, "ui slider"
  end

  test "slider has stimulus controller" do
    html = render_inline(SliderComponent)
    assert_includes html, "fui-slider"
  end

  test "slider with color" do
    html = render_inline(SliderComponent, color: "blue")
    assert_includes html, "blue"
  end

  test "slider labeled" do
    html = render_inline(SliderComponent, labeled: true)
    assert_includes html, "labeled"
  end

  test "slider with name creates hidden input" do
    html = render_inline(SliderComponent, name: "volume", value: 50)
    assert_includes html, 'name="volume"'
    assert_includes html, 'type="hidden"'
  end

  # --- RatingComponent ---

  test "rating renders with default classes" do
    html = render_inline(RatingComponent)
    assert_includes html, "ui star rating"
  end

  test "rating has stimulus controller" do
    html = render_inline(RatingComponent)
    assert_includes html, "fui-rating"
  end

  test "rating max-rating value" do
    html = render_inline(RatingComponent, max_rating: 5, rating: 3)
    assert_includes html, "fui-rating-max-rating-value=\"5\""
  end

  test "rating initial-rating value" do
    html = render_inline(RatingComponent, max_rating: 5, rating: 3)
    assert_includes html, "fui-rating-initial-rating-value=\"3\""
  end

  test "rating heart icon" do
    html = render_inline(RatingComponent, icon: "heart")
    assert_includes html, "heart"
  end

  test "rating with name creates hidden input" do
    html = render_inline(RatingComponent, name: "score", rating: 4)
    assert_includes html, 'name="score"'
  end

  # --- SearchComponent ---

  test "search renders with default classes" do
    html = render_inline(SearchComponent)
    assert_includes html, "ui search"
  end

  test "search has stimulus controller" do
    html = render_inline(SearchComponent)
    assert_includes html, "fui-search"
  end

  test "search with placeholder" do
    html = render_inline(SearchComponent, placeholder: "Find...")
    assert_includes html, 'placeholder="Find..."'
  end

  test "search category" do
    html = render_inline(SearchComponent, category: true)
    assert_includes html, "category"
  end

  test "search has results div" do
    html = render_inline(SearchComponent)
    assert_includes html, 'class="results"'
  end

  test "search has search icon" do
    html = render_inline(SearchComponent)
    assert_includes html, "search icon"
  end

  test "search with url" do
    html = render_inline(SearchComponent, url: "/api/search")
    assert_includes html, "/api/search"
  end
end
