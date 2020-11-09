Rails.application.routes.draw do
  get '/', to: 'static#home'
  get '/login_page', to: 'sessions#login_page'
  post "/login", to: 'sessions#login'

  resources :drinks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
