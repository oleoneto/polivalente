module Polivalente
  class Engine < ::Rails::Engine
    isolate_namespace Polivalente

    config.generators do |g|
      g.scaffold_stylesheet  false
      g.assets               false
      g.test_framework       :rspec
      g.fixture_replacement  :factory_bot
      g.factory_bot dir:     "spec/factories"
    end

    # Loads engine helpers in main application
    initializer "local_helper.action_controller" do
      ActiveSupport.on_load :action_controller do
        helper Devise::Engine.helpers
        helper Polivalente::Engine.helpers
      end
    end

    initializer "polivalente.assets" do |app|
      if Rails.application.config.respond_to?(:assets)
        app.config.assets.precompile << "polivalente/application.js"
        app.config.assets.precompile << "polivalente/application.css"
      end
    end

    # Do not prefix table names with `polivantente_`
    def self.table_name_prefix
    end
  end
end
