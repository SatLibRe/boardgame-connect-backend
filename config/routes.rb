Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :rooms, only: [:index, :show]
  
  get '/boardgames', to: 'boardgames#index'
  post '/boardgames', to: 'boardgames#create'
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  post '/userboardgames', to: 'user_board_games#create'
end
