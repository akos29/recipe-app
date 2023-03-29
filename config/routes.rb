Rails.application.routes.draw do
  resources :recipe_foods
  resources :recipes
  resources :foods
  devise_for :users
  root to: "home#index" 
end
