Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :rooms, only: [:index, :show]
  
  get '/boardgames', to: 'boardgames#index'
  post '/boardgames', to: 'boardgames#create'
end
