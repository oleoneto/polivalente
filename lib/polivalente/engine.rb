module Polivalente
  class Engine < ::Rails::Engine
    isolate_namespace Polivalente

    initializer "local_helper.action_controller" do
      ActiveSupport.on_load :action_controller do
        # Loads engine helpers in main application
        helper Polivalente::Engine.helpers
      end
    end
  end
end
