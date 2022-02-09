Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, path: "auth", path_names: {
    sign_in: 'login',
    sign_up: 'signup',
    sign_out: 'logout',
    confirmation: 'verification',
    registration: 'register',
    password: 'secret',
    unlock: 'unblock',
  }

  mount Polivalente::Engine => "/"
end
