Rails.application.routes.draw do
  resources :user_types
  get 'welcome_user/index'
  devise_for :users , :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  root 'welcome_user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
