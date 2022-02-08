module Polivalente
  module Generators
    class UserGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def copy_user_model
        template "user.rb", "app/models/user.rb"
      end
    end
  end
end
