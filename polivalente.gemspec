require_relative "lib/polivalente/version"

Gem::Specification.new do |spec|
  spec.name        = "polivalente"
  spec.version     = Polivalente::VERSION
  spec.authors     = ["Leo Neto"]
  spec.email       = ["leo@ekletik.com"]
  spec.homepage    = "https://github.com/oleoneto/polivalente"
  spec.summary     = "Reusable generic features"
  spec.description = "Reusable generic features for Rails applications"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/oleoneto/polivalente/blob/main/CHANGELOG.md"
  
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "rails",                          "~> 7.0", ">= 7.0.0"
  spec.add_dependency "active_model_serializers",       "~> 0.10"
  spec.add_dependency "devise",                         "~> 4.8"
  spec.add_dependency "discard",                        "~> 1.2"
  spec.add_dependency "hotwire-rails",                  "~> 0.1.3"
  spec.add_dependency "jbuilder",                       "~> 2.11"
  spec.add_dependency "prefixed_ids",                   "~> 1.2.2"

  spec.add_development_dependency "factory_bot_rails",  "~> 6.2"
  spec.add_development_dependency "faker",              "~> 2.19"
  spec.add_development_dependency "rspec-rails",        "~> 5.0"
end
