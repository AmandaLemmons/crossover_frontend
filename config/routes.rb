Rails.application.routes.draw do
  root 'pages#dashboard'

  get '/products' => 'products#index', as: :products
  post '/secrets' => 'secrets#create', as: :secret

   get 'login' => 'session#new', as: :login
   post 'auth' => 'session#create', as: :auth
   get 'signup' => 'customers#new', as: :signup
   post 'signup' => 'customers#create', as: :customer
   delete 'logout' => 'session#destroy', as: :logout
end
