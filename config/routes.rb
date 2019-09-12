Rails.application.routes.draw do
  get 'admin/index'
  root 'static_pages#index'
  resources :requests
  resources :events
  resources :recrutements
  resources :clubs
  resources :quarters
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
