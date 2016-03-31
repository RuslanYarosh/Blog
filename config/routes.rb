Blog::Application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :comments
  end
  
  root "posts#index"

  get '/about', to: 'pages#about'
  get 'users/sign_up', to: 'pages#sign_up'
  get 'users/sign_in', to: 'pages#sign_in'
  get 'users/:id' => 'users#show'
end
