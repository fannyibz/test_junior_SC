Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :clients, only: [:index, :edit, :update]
  resources :goals

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
