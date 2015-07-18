Rails.application.routes.draw do
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
            post 'inventories/increment', to: 'inventories#increment', as: "increment"
            resources :inventories

  root 'farms#index'

end
