Rails.application.routes.draw do
  get '/home', to: 'application#home', as: 'root'

  resources :users, only: [:new, :show, :index, :create]
end
