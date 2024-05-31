Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'
  get 'home/index'
  root 'home#index'
  get 'new_cat', to: 'home#new_cat', as: 'new_cat'
  post 'create_cat', to: 'home#create_cat', as: 'create_cat'
  get 'show_all_records', to: 'home#show_all_records', as: 'show_all_records'
  resources :countries, only: [:new, :create]
end
