require_relative "lib/ui/version"

Gem::Specification.new do |spec|
  spec.name        = "rails-active-ui"
  spec.version     = Ui::VERSION
  spec.authors     = [ "nathan" ]
  spec.email       = [ "nathankidd@hey.com" ]
  spec.homepage    = "https://github.com/n-at-han-k/#{spec.name}"
  spec.summary     = "ActiveModel::Attributes-based view components"
  spec.description = "ActiveModel::Attributes-based view components"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.1.0"
end
