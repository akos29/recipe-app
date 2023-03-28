Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/edit'
  devise_for :users
  root "users#index"
end
