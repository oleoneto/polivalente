require "polivalente/version"
require "polivalente/railtie"
require "polivalente/engine"

# Third-party

require "devise"
require "discard"
require "language_list"
require "factory_bot_rails"

module Polivalente
  # Attributes
  mattr_accessor :supported_locales
  mattr_accessor :supported_article_tags

  self.supported_locales = [:en]

  self.supported_article_tags = %w[
    business
    coding
    entertainment
    finances
    media
    movies
    programming
    sciences
    social-sciences
    sports
    tourism
    travel
    trips
  ]

  # Modules
  autoload :UserLocale,       "polivalente/user_locale"

  # Configuration

  # do not prefix table names with `polivantente_`
  def self.table_name_prefix
  end

  def self.setup
    yield self
  end
end
