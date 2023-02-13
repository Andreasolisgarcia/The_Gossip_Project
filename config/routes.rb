Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/gossips', to: 'dinamic#index'
  get '/gossip/:id', to: 'dinamic#gossip'
  get '/welcome/:name', to: 'dinamic#welcome'
  

  get '/welcome', to: 'static#welcome'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  

end
