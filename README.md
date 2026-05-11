# rails-active-ui

A Fomantic-UI component system for Rails. Views use `.html.ruby` files with PascalCase component calls.

## Setup

Add to your Gemfile:

```ruby
gem "rails-active-ui"
```

### Engine initializers

The gem's engine (`Ui::Engine`) registers the following automatically:

**Autoload paths** -- `app/lib` and `app/blocks` are added to the autoload paths so `Component` and block classes are available everywhere.

**Asset paths** -- `formantic-ui/` (Fomantic-UI CSS/JS distribution) and `app/javascript/` (Stimulus controllers) are added to Propshaft's asset paths. Reference them in your layout:

```ruby
# CSS
StylesheetLink("stylesheets.css")  # Fomantic-UI stylesheet

# jQuery + Fomantic-UI component JS (must come before importmap)
text fui_javascript_tags

# Importmap (loads Stimulus controllers)
JavascriptImportmap()
```

**Importmap** -- the gem's `config/importmap.rb` is prepended to the app's importmap. It pins:
- `ui` -- the main entry point (`ui/index.js`)
- `ui/controllers/*` -- all Fomantic-UI Stimulus bridge controllers
- `emoji-picker-element` -- emoji picker from CDN

**Helpers** -- `ComponentHelper` and `FuiHelper` are included into `ActionView::Base` automatically.

### Stimulus controllers

Register the Fomantic-UI Stimulus controllers in your app's `app/javascript/controllers/index.js`:

```javascript
import { Application } from "@hotwired/stimulus"
import { registerFuiControllers } from "ui"

const application = Application.start()
registerFuiControllers(application)
```

These are thin jQuery bridge controllers that initialize Fomantic-UI widgets in `connect()` and tear them down in `disconnect()`, making them Turbo-compatible.

### Rails engine usage

If you're using rails-active-ui inside a Rails engine, your engine needs to register the gem's assets manually since engines don't inherit the host app's asset paths:

```ruby
# lib/my_engine/engine.rb
class Engine < ::Rails::Engine
  initializer "my_engine.assets" do |app|
    ui_gem = Gem::Specification.find_by_name("rails-active-ui")
    app.config.assets.paths << File.join(ui_gem.gem_dir, "app/assets")
  end
end
```

## Form Builder

rails-active-ui ships with `FomanticFormBuilder`, a drop-in `ActionView::Helpers::FormBuilder` subclass that wraps every field helper in Fomantic-UI markup.

Set it as the default in your `ApplicationController`:

```ruby
class ApplicationController < ActionController::Base
  ActionView::Base.default_form_builder = FomanticFormBuilder
end
```

Inside a `Form()` block, method_missing delegates to the form builder. Standard Rails form helpers become PascalCase calls:

```ruby
Form(url: users_path, method: :post) {
  TextField(:name, required: true)
  EmailField(:email)
  Select(:role, [["Admin", "admin"], ["User", "user"]], dropdown: true)
  CheckBox(:terms, label: "I agree to the Terms")
  HiddenField(:token)
  Submit("Save", color: "green")
}
```

### Available form helpers

| `.html.ruby` call | Form builder method | Description |
|---|---|---|
| `TextField(:name)` | `f.text_field :name` | Text input wrapped in `.field` |
| `EmailField(:email)` | `f.email_field :email` | Email input |
| `PasswordField(:password)` | `f.password_field :password` | Password input |
| `NumberField(:age)` | `f.number_field :age` | Number input |
| `TextArea(:bio)` | `f.text_area :bio` | Textarea |
| `Select(:role, choices)` | `f.select :role, choices` | Select dropdown |
| `CheckBox(:terms)` | `f.check_box :terms` | Checkbox with Fomantic styling |
| `RadioButton(:plan, "pro")` | `f.radio_button :plan, "pro"` | Radio button |
| `HiddenField(:token)` | `f.hidden_field :token` | Hidden input (no wrapper) |
| `FileField(:avatar)` | `f.file_field :avatar` | File upload |
| `Submit("Save")` | `f.submit "Save"` | Submit button with Fomantic styling |

### Field options

All field helpers accept these options:

- `label:` -- override label text (`nil` to suppress)
- `required:` -- adds "required" class and asterisk
- `disabled:` -- adds "disabled" class
- `inline:` -- label sits beside the input
- `width:` -- Fomantic grid column word (e.g. `"six"`, `"three"`)
- `error:` -- error message string
- `hint:` -- grey note beneath the input
- `field_class:` -- extra classes on the wrapping `.field` div
- `input_class:` -- extra classes on the input element

### Submit button options

- `color:` -- Fomantic color (e.g. `"green"`, `"red"`, `"blue"`)
- `size:` -- Fomantic size (e.g. `"tiny"`, `"large"`)
- `basic:` -- basic button style
- `icon:` -- icon name (e.g. `"checkmark"`)

### Field groups

```ruby
Form(url: users_path) {
  FieldsGroup(equal_width: true) {
    TextField(:first_name)
    TextField(:last_name)
  }
}
```

### Form-level messages

```ruby
Form(url: users_path) {
  ErrorMessage("Something went wrong", ["Email is taken"])
  SuccessMessage("All done!", "Profile updated.")
  WarningMessage("Heads up", ["Verify your email"])
}
```
