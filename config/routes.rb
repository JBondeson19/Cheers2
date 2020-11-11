Rails.application.routes.draw do
  get '/', to: 'static#home'

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get '/login', to: 'login#new'
  post "/login", to: 'login#create'

  delete "/logout", to: "login#destroy", as: "logout"

  post '/drinks', to: 'drinks#create', as: 'new_drink'

  get 'relationship/new', to: 'relationships#new'
  post 'relationships', to: 'relationships#create'

  put '/users//:id', to: "users#update", as: "update"
  delete "/users/:id", to: "users#destroy", as: "destroy"
  
  resources :drinks, only: [:index, :show, :new, :edit, :update]

  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
