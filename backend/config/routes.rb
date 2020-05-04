Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#logout'
  get '/logout', to: 'sessions#destroy'
  get "/get_current_user", to: "sessions#get_current_user"
  post '/signin', to: 'sessions#new'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :atoms      
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end