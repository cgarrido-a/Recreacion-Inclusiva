Rails.application.routes.draw do
  

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'dashboards/index'
  
  devise_for :users, controllers: { sessions: 'user/sessions'}
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :comments
  resources :publications 
  resources :users


  root 'home#index'
end
