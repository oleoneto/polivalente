class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :verify_authenticity_token, only: :all

  def all
    user_class = Polivalente.config.user_class.constantize

    raise request.env["omniauth.auth"].to_yaml

    user = user_class.from_omniauth(request.env["omniauth.auth"])

    if user.persisted?
      flash.notice = "Signed in!"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end
  alias_method :github,  :all
  alias_method :twitter, :all

  def failure
    redirect_to main_app.root_path
  end
end
