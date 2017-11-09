Rails.application.routes.draw do

  root 'pages#index'
  get '/pages/about', to: 'pages#about'
  get '/pages/portfolio', to: 'pages#portfolio'
  get '/pages/skills', to: 'pages#skills'
  get '/pages/contact', to: 'pages#contact'
  get '/pages/try', to: 'pages#try'


  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
end
