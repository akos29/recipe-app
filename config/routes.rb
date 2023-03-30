Rails.application.routes.draw do
  devise_for :users
  root "recipes#index"

  delete '/recipes/:id', to: 'recipes#destroy', as: 'recipe'
  resources :recipes, only: [:index, :show, :new, :create, :destroy]
end
