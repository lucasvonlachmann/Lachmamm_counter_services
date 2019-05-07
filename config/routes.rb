Rails.application.routes.draw do
  resources :counter_services
  resources :counter_documents
  resources :counter_schedules
  resources :service_statuses
  resources :counter_service_types
  resources :carrier_clients
  resources :carriers
  devise_for :users
  resources :branches

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
