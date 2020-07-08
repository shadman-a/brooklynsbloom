Rails.application.routes.draw do
  resources :shops
  resources :plants
  resources :carts
  resources :buyers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
