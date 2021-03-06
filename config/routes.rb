Rails.application.routes.draw do
  resources :users

  get 'applications_controller/new'

  get 'applications_controller/create'

  get 'users_controller/new'

  get 'users_controller/create'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :applications, only: [:show, :new, :create, :edit]

  root to: "users#new"
end
