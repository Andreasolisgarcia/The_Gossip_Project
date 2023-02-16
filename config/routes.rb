Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :gossips do 
    resources :comments
  end
  resources :users
  resources :cities
  resources :sessions, only: [:new, :create, :destroy]
  
  get '/welcome/:name', to: 'dinamic#welcome'
  get '/welcome', to: 'static#welcome'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  

end
