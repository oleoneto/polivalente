module Polivalente
  class ApplicationController < Polivalente.config.base_controller.constantize
    include Polivalente::UserLocale
    before_action :set_user_locale!
  end
end
