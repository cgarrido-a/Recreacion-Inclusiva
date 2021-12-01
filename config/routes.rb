Rails.application.routes.draw do
  
  get 'dashboards/index'
  devise_for :users, controllers: { sessions: 'user/sessions'}

  resources :comments
  resources :publications do 
    member do
      patch "vote", to: "publications#vote"
    end
  end
  resources :users


  root 'home#index'
end
