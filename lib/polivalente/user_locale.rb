module Polivalente
  module UserLocale

    protected

    def set_user_locale!
      @user_locale ||= params[:locale] ||
        session[:locale] ||
        extracted_locale_from_header ||
        I18n.default_locale

      I18n.locale = @user_locale

    rescue I18n::InvalidLocale
      I18n.locale = @user_locale = I18n.default_locale
    end

    def extracted_locale_from_header
      request.headers['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]/).first.to_sym
    rescue NoMethodError
      nil
    end
  end
end
