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
  end

  # Do not prefix table names with `polivantente_`
  def self.table_name_prefix
  end
end
