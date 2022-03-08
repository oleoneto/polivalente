module Polivalente
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def copy_migrations
        rails_command "railties:install:migrations FROM=polivalente", inline: true
      end

      def copy_initializer
        template "polivalente.rb", "config/initializers/polivalente.rb"
      end

      def copy_ams_initializer
        template "active_model_serializers.rb", "config/initializers/active_model_serializers.rb"
      end

      def add_route
        route "mount Polivalente::Engine => ''"
        route "devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout' }"
      end

      def add_devise_i18n_gem
        gem 'devise-i18n'
      end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end
