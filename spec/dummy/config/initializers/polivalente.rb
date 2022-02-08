Polivalente.configure do |config|
  # ==> User configuration
  config.user_class = "::User"

  # ==> Controller configuration
  config.base_controller     = "::ApplicationController"
  config.base_api_controller = "::ApplicationController"

  # ==> Account configuration
  config.inactive_account_ttl = 180.days
  config.spam_account_ttl     = 1.days

  # ==> Locales configuration
  config.supported_locales    = [:en, :fr, :pt]

  # ==> Trash configuration
  config.trash_ttl            = 1.days
end