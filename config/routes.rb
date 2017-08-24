Rails.application.routes.draw do
  devise_for :users
  #devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #for getting users info when they login
  get '/api/v1/users/info', to: 'api/v1/users#fetch_user_info'
  #for getting users feed
  get '/api/v1/users/feed', to: 'api/v1/users#fetch_user_feed'
  #for getting users connections
  get '/api/v1/users/connections', to: 'api/v1/connection_requests#get_connections'


  #for jwt authentication
  get 'home' => 'home#index'

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  namespace :api do
    namespace :v1 do
      resources :sessions
    end
  end



end
