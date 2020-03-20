Rails.application.routes.draw do
  resources :users, only: [:index]
  
  get '/boardgames', to: 'boardgames#index'
  post '/boardgames', to: 'boardgames#create'
end
