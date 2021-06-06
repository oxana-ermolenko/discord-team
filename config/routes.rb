Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get "about", to: "pages#about"
  resources :portfolios
  resources :categories
end
