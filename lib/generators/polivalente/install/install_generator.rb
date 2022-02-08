module Polivalente
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def copy_migrations
        rails_command "railties:install:migrations FROM=polivalente", inline: true
      end
      
      def copy_locales
        copy_file "../../../../config/locales/en.yml", "config/locales/en.yml"
        copy_file "../../../../config/locales/es.yml", "config/locales/es.yml"
        copy_file "../../../../config/locales/fr.yml", "config/locales/fr.yml"
        copy_file "../../../../config/locales/pt.yml", "config/locales/pt.yml"
      end

      def copy_initializer
        template "polivalente.rb", "config/initializers/polivalente.rb"
      end

      def copy_initializer
        template "active_model_serializers.rb", "config/initializers/active_model_serializers.rb"
      end

      def add_route
        devise_class = Polivalente.config.user_class.constantize

        route "mount Polivalente::Engine => ''"
        route "devise_for :users"
      end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end
