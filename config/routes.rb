Rails.application.routes.draw do
  resources :rents
  resources :reviews
  resources :islands
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
