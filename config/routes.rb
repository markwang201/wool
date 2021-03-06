Rails.application.routes.draw do
  resources :topics
  # class DomainConstraint
  #   def initialize(domain)
  #     @domains = domain
  #   end
  #
  #   def matches?(request)
  #     @domains.include? request.host
  #   end
  # end

  #constraints DomainConstraint.new('ak.active.local:3002') do
  mount Ckeditor::Engine => '/ckeditor'

  resources :topics do
    resources :articles
  end

  resources :articles do
    collection do
      get :search
    end
  end

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

  get '/articles_list/:topic_id', :to => 'articles#index', as: :articles_list

  get :order_search, to: 'orders#search'

  get :admin_123, to: 'admin#index'

  get :qqbot_api, to: 'admin#qqbot_api'

  resources :orders
  #end

  namespace :admin do
    resources :articles
  end

  # constraints DomainConstraint.new('a3.active.local:3002') do
  #    get '/', :to => redirect('/500.html')
  # end
end
