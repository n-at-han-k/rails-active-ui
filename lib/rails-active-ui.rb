# frozen_string_literal: true

# Shim so Bundler.require can find the gem by its published name
# (rails-active-ui) rather than requiring consumers to know the
# internal require path ("ui").
require "ui"
