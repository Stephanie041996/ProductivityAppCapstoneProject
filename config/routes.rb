Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
  
  get '/activities', to: 'activities#new'
  get '/users', to: 'users#new'
  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/users', to: 'users#create'
  get '/dashboard', to: 'activities#index'
  resources :users
  resources :activities, only: %i[index new create show]
end
