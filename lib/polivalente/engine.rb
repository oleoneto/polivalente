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

    initializer "polivalente.factories", after: "factory_bot.set_factory_paths" do
      FactoryBot.definition_file_paths << File.expand_path('../../../spec/factories', __FILE__) if defined?(FactoryBot)
    end

    initializer "local_helper.action_controller" do
      ActiveSupport.on_load :action_controller do
        # Loads engine helpers in main application
        helper Polivalente::Engine.helpers
      end
    end
  end
end
