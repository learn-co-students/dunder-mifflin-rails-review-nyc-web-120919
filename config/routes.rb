Rails.application.routes.draw do
   resources :dogs
   resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #greeting_route
  get '/', to: "employees#greeting"

  #Routes for dogs
  get "/dogs", to: "dogs#index"
  #added the "/are/" to the route. couldnt get it to go to the view without it...
  get "/dogs/are/popular", to: "dogs#popular", as: "popular_dog"
  get "/dogs/new", to: "dogs#new"
  get "/dogs/:id", to: "dogs#show"
  post "/dogs", to: "dogs#create"

  #Routes for employees
  get "/employees", to: "employees#index"
  get "/employees/new", to: "employees#new"
  get "/employees/:id", to: "employees#show"
  post "/employees", to: "employees#create"
  get "/employees/:id/edit", to: "employees#edit"
  patch "/employees/:id", to: "employees#update"
end
