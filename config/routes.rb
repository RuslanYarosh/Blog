Blog::Application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :comments
  end
  
  root "posts#index"

  get '/about', to: 'pages#about'
  get 'users/sign_in', to: 'pages#sign_in'
end
