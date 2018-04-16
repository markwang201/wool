Rails.application.routes.draw do
  resource :wechat, only: [:show, :create]
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

  get '/:bill_id/orders/new', :to => 'orders#new'

  get :order_search, to: 'orders#search'

  get :admin_123, to: 'admin#index'

  get :qqbot_api, to: 'admin#qqbot_api'

  resources :orders
end
