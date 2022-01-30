Polivalente::Engine.routes.draw do
  # Health check
  resources :ping, only: [:index]

  devise_for :users, class_name: "Polivalente::User"
end
