Rails.application.routes.draw do
  resources :airlines, param: :slug
  resources :reviews, only: [:create, :destroy]
end
