Rails.application.routes.draw do
  get 'home/index'
  resources :catlists
  root 'home#index'
  get 'new_cat', to: 'home#new_cat', as: 'new_cat'
  get 'show_all_records', to: 'home#show_all_records', as: 'show_all_records'
end