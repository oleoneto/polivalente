Polivalente::Engine.routes.draw do
  # Health check
  resources :ping, only: [:index]

  resources :users, only: [:show, :edit, :update]

  namespace :autocomplete, defaults: { format: :json } do
    get 'tags'
    get 'users'
  end
end
