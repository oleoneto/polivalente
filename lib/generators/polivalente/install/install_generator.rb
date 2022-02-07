module Polivalente
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      def copy_migrations
        rails_command "railties:install:migrations FROM=polivalente", inline: true
      end
    end
  end
end
