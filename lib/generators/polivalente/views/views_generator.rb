module Polivalente
  module Generators
    class ViewsGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def copy_devise_views
        directory "../../../../app/views/devise", "app/views/devise"
      end
    end
  end
end
