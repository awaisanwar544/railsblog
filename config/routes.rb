Rails.application.routes.draw do
  # get 'home/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
