Rails.application.routes.draw do
  resources :users
  resources :locations
  resources :weathers
  resources :expenses
  resources :incomes
  resources :breeds
  resources :eggs
  resources :animals
  resources :farms

  root 'users#index'

end
