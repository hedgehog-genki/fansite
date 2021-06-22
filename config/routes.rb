Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  resources :home
  resources :archive do
    collection do
      get 'search'
    end
  end
  resources :clip
  resources :fanart
  resources :music
end