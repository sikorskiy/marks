Rails.application.routes.draw do
  resources :users, :subjects, :marks
  get '/signin', to: 'users#signin'
  post '/login', to: 'users#login'
  root 'users#index'
end
