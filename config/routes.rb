Rails.application.routes.draw do
  get 'ships/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'ships#index'
  get 'contact' => 'home#contact'
  devise_for :users
  resources :ships
end
