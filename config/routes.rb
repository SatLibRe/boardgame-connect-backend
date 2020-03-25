Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :rooms, only: [:index, :show]
  resources :boardgames, only: [:show]
  # resources :user_rooms, only: [:index, :create, :destroy]
  
  get '/boardgames', to: 'boardgames#index'
  post '/boardgames', to: 'boardgames#create'
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  post '/userboardgames', to: 'user_board_games#create'
  post '/rooms', to: 'rooms#create'
  get '/rooms/:id', to: 'rooms#show'
  post '/userrooms', to: 'user_rooms#create'
  post '/messages', to: 'messages#create'
  get '/userrooms', to: 'user_rooms#index'
  delete '/userrooms/:id', to: 'user_rooms#destroy'
  patch '/rooms/:id', to: 'rooms#update'

  get 'users/:id/rooms', to: 'users#showusersrooms'


  
  mount ActionCable.server => '/cable'
end
