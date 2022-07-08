Rails.application.routes.draw do
  post '/empleate', to: 'empleate#create'
  get '/empleate', to: 'empleate#index'
  get '/empleate/new', to: 'empleate#new', as: :new_empleo
  get '/inicio', to: 'pages#inicio'
  get '/empleate/:id', to: 'empleate#show', as: :empleo
  root 'pages#inicio'
end
