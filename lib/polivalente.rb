require "polivalente/version"
require "polivalente/railtie"
require "polivalente/engine"
require "polivalente/configuration"

# Third-party

require "active_model_serializers"
require "devise"
require "discard"
require "hotwire-rails"

module Polivalente
  class << self
    attr_reader :config

    def configure
      @config = Configuration.new
      yield config
    end
  end
  

  # Modules
  autoload :UserLocale,    "polivalente/user_locale"

  # Configuration

  # do not prefix table names with `polivantente_`
  def self.table_name_prefix
  end
end
