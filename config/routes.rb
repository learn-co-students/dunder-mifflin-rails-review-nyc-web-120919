Rails.application.routes.draw do
  get '/dogs/sort', to: 'dogs#sort', as: "sort_dogs"
  get 'employees', to: 'employees#index'
  get 'employees/new', to: 'employees#new'
  get 'employees/:id/edit', to: "employees#edit", as: "edit_employee"
  get 'employees/:id', to: 'employees#show'
  patch 'employees/:id', to: "employees#update"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
