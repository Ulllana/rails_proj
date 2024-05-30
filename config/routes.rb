Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'
  get 'home/index'
  resources :catlists
  root 'home#index'

  get 'new_cat', to: 'home#new_cat', as: 'new_cat'
  get 'show_all_records', to: 'home#show_all_records', as: 'show_all_records'

  get 'show_all_records', to: 'users#show_all_records', as: 'show_all_records'

end