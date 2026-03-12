# frozen_string_literal: true

module Ui
  class Engine < ::Rails::Engine
    initializer "ui.autoload_paths" do |app|
      app.config.autoload_paths += [ root.join("app", "lib").to_s ]
    end

    initializer "ui.assets" do |app|
      app.config.assets.paths << root.join("formantic-ui")
    end
  end
end
