Rails.application.routes.draw do


  namespace :logusers, path: '', as:'' do
    resources :users, only: [:new, :create]
  end

  namespace :logempresa, path: '', as:'' do
    resources :empresas, only: [:new, :create]
    resources :loginusuario, olny: [:new, :create]
  end

  get 'users/new', to: 'users#new', as: :new_users
  post 'users/new', to: 'users#create'
  get 'empresas/new', to: 'empresas#new', as: :new_empresas
  post 'empresas/new', to: 'empresas#create'
  #delete '/empleate/:id', to: 'empleate#destroy'
  patch '/empleate/:id', to: 'empleate#update'
  post '/empleate', to: 'empleate#create'
  get '/empleate', to: 'empleate#index'
  get '/empleate/new', to: 'empleate#new', as: :new_empleo
  get '/inicio', to: 'pages#inicio'
  get '/empleate/:id', to: 'empleate#show', as: :empleo
  get 'empleate/:id/edit', to: 'empleate#edit', as: :edit_empleate
  root 'pages#inicio'
end
