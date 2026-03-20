require_relative "lib/ui/version"

Gem::Specification.new do |spec|
  spec.name        = "rails-active-ui"
  spec.version     = Ui::VERSION
  spec.authors     = [ "nathan" ]
  spec.email       = [ "nathankidd@hey.com" ]
  spec.homepage    = "https://github.com/n-at-han-k/#{spec.name}"
  spec.license     = "MIT"
  spec.summary     = "ActiveModel::Attributes-based view components"
  spec.description = "A Rails engine providing view components built on ActiveModel::Attributes for type-safe, declarative UI rendering."

  spec.required_ruby_version = ">= 3.2"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/main"
  spec.metadata["changelog_uri"]   = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", "~> 8.1", ">= 8.1.0"
end
