Rails.application.routes.draw do

  resources :successful_pages
  get 'successful_pages' => 'successful_pages#index' 

  resources :carts, only: [:show]
  get 'cart' => 'carts#show'

  resources :order_items, only: [:create, :update, :destroy]

  resources :orders, only: [:update]

  resources :food_items
  get 'food_items' => 'food_items#index'

  get 'food_items/:id' => 'food_items#show'

  resources :contact_us
  get 'contact_us' => 'contact_us#index'

  resources :menus
  	get 'menus' => 'menus#index'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
