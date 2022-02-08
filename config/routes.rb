Polivalente::Engine.routes.draw do
  # Health check
  resources :ping, only: [:index]

  namespace :autocomplete, defaults: { format: :json } do
    get 'tags',       as: :tag_completion
    get 'users',      as: :user_completion
  end
end
