Rails.application.routes.draw do
  get 'call_transactions/index'
  devise_for :users

  root to: 'pages#home'
  resources :clients, only: [:index, :edit, :update]
  resources :goals
  get '/call_transaction', to: 'call_transactions#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
