Rails.application.routes.draw do
  root 'home#index'
  get 'show_all_records', to: 'home#show_all_records', as: 'show_all_records'
end