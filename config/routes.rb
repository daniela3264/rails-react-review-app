Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'

  namespace :api do
    resources :airlines, param: :slug
    resources :reviews, only [:create, :destroy]
  end


  # capture paths not recognised, back to index.
  get '*path', to: 'pages#index', via: :all
end
