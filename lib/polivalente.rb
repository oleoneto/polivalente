require "polivalente/version"
require "polivalente/railtie"
require "polivalente/engine"
require "devise"

module Polivalente
  # Attributes

  # Configuration

  def self.table_name_prefix
    # do not prefix table names with `polivantente_`
  end

  def self.setup
    yield self
  end
end
