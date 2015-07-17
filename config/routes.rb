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

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                    users GET    /users(.:format)               users#index
#                          POST   /users(.:format)               users#create
#                 new_user GET    /users/new(.:format)           users#new
#                edit_user GET    /users/:id/edit(.:format)      users#edit
#                     user GET    /users/:id(.:format)           users#show
#                          PATCH  /users/:id(.:format)           users#update
#                          PUT    /users/:id(.:format)           users#update
#                          DELETE /users/:id(.:format)           users#destroy
#                locations GET    /locations(.:format)           locations#index
#                          POST   /locations(.:format)           locations#create
#             new_location GET    /locations/new(.:format)       locations#new
#            edit_location GET    /locations/:id/edit(.:format)  locations#edit
#                 location GET    /locations/:id(.:format)       locations#show
#                          PATCH  /locations/:id(.:format)       locations#update
#                          PUT    /locations/:id(.:format)       locations#update
#                          DELETE /locations/:id(.:format)       locations#destroy
#                 weathers GET    /weathers(.:format)            weathers#index
#                          POST   /weathers(.:format)            weathers#create
#              new_weather GET    /weathers/new(.:format)        weathers#new
#             edit_weather GET    /weathers/:id/edit(.:format)   weathers#edit
#                  weather GET    /weathers/:id(.:format)        weathers#show
#                          PATCH  /weathers/:id(.:format)        weathers#update
#                          PUT    /weathers/:id(.:format)        weathers#update
#                          DELETE /weathers/:id(.:format)        weathers#destroy
#                 expenses GET    /expenses(.:format)            expenses#index
#                          POST   /expenses(.:format)            expenses#create
#              new_expense GET    /expenses/new(.:format)        expenses#new
#             edit_expense GET    /expenses/:id/edit(.:format)   expenses#edit
#                  expense GET    /expenses/:id(.:format)        expenses#show
#                          PATCH  /expenses/:id(.:format)        expenses#update
#                          PUT    /expenses/:id(.:format)        expenses#update
#                          DELETE /expenses/:id(.:format)        expenses#destroy
#                  incomes GET    /incomes(.:format)             incomes#index
#                          POST   /incomes(.:format)             incomes#create
#               new_income GET    /incomes/new(.:format)         incomes#new
#              edit_income GET    /incomes/:id/edit(.:format)    incomes#edit
#                   income GET    /incomes/:id(.:format)         incomes#show
#                          PATCH  /incomes/:id(.:format)         incomes#update
#                          PUT    /incomes/:id(.:format)         incomes#update
#                          DELETE /incomes/:id(.:format)         incomes#destroy
#                   breeds GET    /breeds(.:format)              breeds#index
#                          POST   /breeds(.:format)              breeds#create
#                new_breed GET    /breeds/new(.:format)          breeds#new
#               edit_breed GET    /breeds/:id/edit(.:format)     breeds#edit
#                    breed GET    /breeds/:id(.:format)          breeds#show
#                          PATCH  /breeds/:id(.:format)          breeds#update
#                          PUT    /breeds/:id(.:format)          breeds#update
#                          DELETE /breeds/:id(.:format)          breeds#destroy
#                     eggs GET    /eggs(.:format)                eggs#index
#                          POST   /eggs(.:format)                eggs#create
#                  new_egg GET    /eggs/new(.:format)            eggs#new
#                 edit_egg GET    /eggs/:id/edit(.:format)       eggs#edit
#                      egg GET    /eggs/:id(.:format)            eggs#show
#                          PATCH  /eggs/:id(.:format)            eggs#update
#                          PUT    /eggs/:id(.:format)            eggs#update
#                          DELETE /eggs/:id(.:format)            eggs#destroy
#                  animals GET    /animals(.:format)             animals#index
#                          POST   /animals(.:format)             animals#create
#               new_animal GET    /animals/new(.:format)         animals#new
#              edit_animal GET    /animals/:id/edit(.:format)    animals#edit
#                   animal GET    /animals/:id(.:format)         animals#show
#                          PATCH  /animals/:id(.:format)         animals#update
#                          PUT    /animals/:id(.:format)         animals#update
#                          DELETE /animals/:id(.:format)         animals#destroy
#                    farms GET    /farms(.:format)               farms#index
#                          POST   /farms(.:format)               farms#create
#                 new_farm GET    /farms/new(.:format)           farms#new
#                edit_farm GET    /farms/:id/edit(.:format)      farms#edit
#                     farm GET    /farms/:id(.:format)           farms#show
#                          PATCH  /farms/:id(.:format)           farms#update
#                          PUT    /farms/:id(.:format)           farms#update
#                          DELETE /farms/:id(.:format)           farms#destroy
#                   trends GET    /trends(.:format)              trends#index
#                          POST   /trends(.:format)              trends#create
#                new_trend GET    /trends/new(.:format)          trends#new
#               edit_trend GET    /trends/:id/edit(.:format)     trends#edit
#                    trend GET    /trends/:id(.:format)          trends#show
#                          PATCH  /trends/:id(.:format)          trends#update
#                          PUT    /trends/:id(.:format)          trends#update
#                          DELETE /trends/:id(.:format)          trends#destroy
#                     root GET    /                              farms#index
