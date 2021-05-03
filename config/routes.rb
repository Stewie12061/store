Rails.application.routes.draw do
  resources :products
  resources :accessories
  resources :about
  resources :news

  
  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords',
        registrations: 'users/registrations'
      }
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
