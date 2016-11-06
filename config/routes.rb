Rails.application.routes.draw do
  resources :organizations
  resources :events
  resources :contributions
  resources :teams
  resources :attendees
  resources :users, except: [:new] 
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  
  
  get '/register', to: 'users#new'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  
  
  
  namespace :admin do 
    resources :events
    get '/dashboard/:id', to: 'pages#show'
  end
  
  
  
end
