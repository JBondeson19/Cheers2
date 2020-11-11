Rails.application.routes.draw do
  get '/', to: 'static#home'

  get '/login', to: 'login#new'
  post "/login", to: 'login#create'

  delete "/logout", to: "login#destroy", as: "logout"
  
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  delete "/users/:id", to: "users#destroy", as: "destroy"

  get 'relationship/new', to: 'relationships#new'
  post '/relationship', to: 'relationships#create'

  resources :drinks

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
