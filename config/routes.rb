Rails.application.routes.draw do
  resources :user_types
  get 'welcome_user/index'
  devise_for :users
  root 'welcome_user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
