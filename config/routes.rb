Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'user/sessions', omniauth_callbacks: 'omniauth'}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'dashboards/index'
  
  resources :comments
  resources :publications 
  resources :users


  root 'home#index'
end
