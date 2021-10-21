Rails.application.routes.draw do
  resources :comics

  root to: 'comics#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
