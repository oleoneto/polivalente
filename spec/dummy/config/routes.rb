Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, path: "auth"

  mount Polivalente::Engine => "/"
end
