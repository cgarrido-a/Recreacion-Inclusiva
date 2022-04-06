Rails.application.routes.draw do
  
  get 'recomendation/index'
  post 'recomendation/index'

  devise_for :users, controllers: { sessions: 'user/sessions', omniauth_callbacks: 'omniauth'}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  get 'dashboards/index'
  
  resources :comments
  resources :publications 
  resources :users

  namespace :paypal do 
    resources :checkouts, only: [:create] do 
      collection do 
        get :complete
      end
    end
  end

  root 'home#index'
end
