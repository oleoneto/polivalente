require "polivalente/version"
require "polivalente/railtie"
require "polivalente/engine"

# Third-party

require "devise"
require "factory_bot_rails"

module Polivalente
  # Attributes
  mattr_accessor :supported_locales

  self.supported_locales = [:en]

  # Modules
  autoload :UserLocale,    "polivalente/user_locale"

  # Configuration

  # do not prefix table names with `polivantente_`
  def self.table_name_prefix
  end

  def self.setup
    yield self
  end
end
