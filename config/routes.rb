Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants do
    resources :reviews, only: %I[new create]
    # member do
    #   get :reviews
    # end
  end
  resources :reviews, only: [:destroy]
end
