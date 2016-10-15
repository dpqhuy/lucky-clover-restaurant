Rails.application.routes.draw do
  resources :sections
  get 'contact_us/index'

  get 'menu/index'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
