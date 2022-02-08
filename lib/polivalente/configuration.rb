module Polivalente
  class Configuration
    attr_accessor  :base_controller
    attr_accessor  :base_api_controller
    attr_accessor  :inactive_account_ttl
    attr_accessor  :spam_account_ttl
    attr_accessor  :supported_locales
    attr_accessor  :trash_ttl
    attr_accessor  :user_class
  end
end
