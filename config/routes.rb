Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'index/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/users/:user_id/posts', to: 'users#show_all_posts'
  get '/users/:user_id/followers', to: 'users#show_all_followers'
  get '/users/:user_id/all', to: 'users#show_all_info'
  resources  :users
  resources :posts
end
