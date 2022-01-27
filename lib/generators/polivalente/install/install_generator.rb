module Polivalente
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      def copy_migrations
        rails_command "railties:install:migrations FROM=polivalente", inline: true
      end

      def register_route
        route "mount Polivalente::Engine => '/blog'"
      end

      def create_polivalente_initializer
        initializer "polivalente.rb" do
          "
          Polivalente.setup do |config|
            # config.supported_locales = [:en]
            # config.supported_article_tags = %w[entertainment programming]
          end
          "
        end
      end
    end
  end
end
