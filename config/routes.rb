Rails.application.routes.draw do
  get '/', to: 'static#home'

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get '/login', to: 'login#new'
  post "/login", to: 'login#create'

  delete "/logout", to: "login#destroy", as: "logout"

  get '/drinks/new', to: 'drinks#new', as: 'new_drink_form'
  post '/drinks', to: 'drinks#create', as: 'new_drink'
  delete '/drinks/:id', to: 'drinks#destroy', as: 'destroy_drink' 

  get 'relationship/new', to: 'relationships#new'
  post 'relationships', to: 'relationships#create'

  get '/users/:id/edit', to: 'users#edit', as: 'edit'
  patch '/users/:id/edit', to: "users#update", as: "update"
  delete "/users/:id", to: "users#destroy", as: "destroy"
  
  resources :drinks, only: [:index, :show, :edit, :update]

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
