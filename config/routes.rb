Rails.application.routes.draw do
  get '/', to: 'static#home'

  get '/login_page', to: 'sessions#login_page'
  post "/login", to: 'sessions#login'

  get "/logout", to: "sessions#logout", as: "logout"
  
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  resources :drinks

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
