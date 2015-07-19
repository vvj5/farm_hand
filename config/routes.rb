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
            post 'inventories/incrementanimal', to: 'inventories#incrementanimal', as: "incrementanimal"
            post 'inventories/decrementanimal', to: 'inventories#decrementanimal', as: "decrementanimal"
            post 'inventories/incrementegg', to: 'inventories#incrementegg', as: "incrementegg"
            post 'inventories/decrementegg', to: 'inventories#decrementegg', as: "decrementegg"
            resources :inventories

  root 'farms#index'

end
