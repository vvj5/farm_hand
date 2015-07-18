Rails.application.routes.draw do
  resources :inventories
            devise_for :users
            resources :users
            resources :locations
            resources :weathers
            resources :expenses
            resources :incomes
            resources :breeds
            resources :eggs
            resources :animals
            resources :farms
            resources :trends

  root 'farms#index'

end
