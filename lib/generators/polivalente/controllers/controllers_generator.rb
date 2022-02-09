module Polivalente
  module Generators
    class ControllersGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def copy_devise_controller
        template "devise_controller.rb", "app/controllers/custom_devise_controller.rb"
      end

      def copy_user_omniauth_controller
        template "omniauth_controller.rb", "app/controllers/users/omniauth_callbacks_controller.rb"
      end
    end
  end
end
