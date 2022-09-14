Rails.application.routes.draw do
  resources :users

  get '/users/new_one', to: 'users#new_one_by_one'
  post '/users', to: 'users#create_one_by_one'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
end
