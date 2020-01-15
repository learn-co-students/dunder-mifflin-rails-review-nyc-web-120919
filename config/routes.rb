Rails.application.routes.draw do
 
  # resources :dogs, only: [:index, :show]
  # resources :employees, only: [:index, :show, :create, :new, :edit, :update]
   
  get '/', to: "employees#index"  #index(employees)   
  get '/employees', to: "employees#index", as: "employees" #index(employees)
  get '/dogs', to: "dogs#index", as: "dogs" #index(dogs)
   
  get '/employees/:id/edit', to: "employees#edit", as: "edit_employee" #edit(employee)
  #get '/dogs/:id/edit', to: "dogs#edit", as: "edit_dog" #edit(dog)
   
  get '/employees/new', to: "employees#new" #new(employee)
  #get '/dogs/new', to: "dogs#new", as: "new_dog" #new(dog) 
   
  get '/employees/:id', to: "employees#show", as: "employee" #show(employee)
  get '/dogs/:id', to: "dogs#show", as: "dog" #show(dog)
   
  patch '/employees/:id', to: "employees#update" #update(employee)
  # patch '/dogs/:id', to: "dogs#update" #update(dog)

  post '/employees', to: "employees#create" #create(employee)
  #post '/dogs', to: "dogs#create", as: "create_dog"  #create(dog)

  # delete '/employees/:id', to: "employees#delete", as: "delete_employees"
  # delete '/dogs/:id', to: "dogs#delete", as: "delete_dogs"
end
