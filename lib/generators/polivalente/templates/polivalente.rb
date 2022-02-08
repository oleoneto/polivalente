# frozen_string_literal: true

Polivalente.configure do |config|
  # ==> User configuration
  config.user_class = "::User"

  # ==> Controller configuration
  config.base_controller     = "::ApplicationController"
  config.base_api_controller = "::ApplicationController"

  # ==> Account configuration
  config.inactive_account_ttl = 60.days
  config.spam_account_ttl     = 4.days

  # ==> Locales configuration
  config.supported_locales    = [:en]

  # ==> Trash configuration
  config.trash_ttl            = 30.days
end
