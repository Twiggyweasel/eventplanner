Rails.application.routes.draw do
  resources :organizations
  resources :events
  resources :contributions
  resources :teams
  resources :attendees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  
  namespace :admin do 
    resources :events
    get '/dashboard/:id', to: 'pages#show'
  end
end
