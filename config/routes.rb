Rails.application.routes.draw do
  devise_for :users
  resources :channels
  resources :platforms
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :bills do
    collection do
      get :search
    end
  end

  resources :orders
end
