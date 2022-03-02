module Polivalente
	module Generators
		class LocalesGenerator < ::Rails::Generators::Base
			source_root File.expand_path("../../templates", __FILE__)

			def copy_locales
				directory "../../../../config/locales", "config/locales"
			end
		end
	end
end