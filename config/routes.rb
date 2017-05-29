Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'orders#index'
  resources :items
  resources :products
  resources :orders
end
