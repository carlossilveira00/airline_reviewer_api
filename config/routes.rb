Rails.application.routes.draw do
  get 'airlines/index'
  get 'airlines/show'
  get 'airlines/create'
  get 'airlines/update'
  get 'airlines/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
