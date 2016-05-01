Rails.application.routes.draw do
  get '/', to: 'home#index', as: :root

  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/:id', to: 'tasks#show', as: :task

  post '/cart_tasks', to: 'cart_tasks#create', as: :cart_tasks
  delete '/cart_tasks/:id', to: 'cart_tasks#destroy', as: :cart_task

  get '/volunteers/new', to: 'volunteers#new', as: :new_volunteer
  post '/volunteers', to: 'volunteers#create', as: :volunteers
  get '/volunteers/:id/edit', to: 'volunteers#edit', as: :edit_volunteer

  get '/dashboard', to: 'volunteers#show'
  get "/cart", to: 'cart_tasks#show'

  get '/commitments', to: 'commitments#show', as: :commitments
  post '/commitments', to: 'commitments#create'

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/:name", to: 'cities#show', as: :city

  namespace :admin do
    get '/dashboard', to: 'volunteers#show'
    patch '/dashboard', to: 'volunteers#update'
    get '/edit', to: 'volunteers#edit'
  end

  get '/admin/tasks/new', to: 'admin/tasks#new', as: :new_admin_task
  post '/admin/tasks', to: 'admin/tasks#create', as: :admin_tasks
  get '/admin/tasks/:id/edit', to: 'admin/tasks#edit', as: :edit_admin_task
  patch '/admin/tasks/:id', to: 'admin/tasks#update', as: :admin_task
  put '/admin/tasks/:id', to: 'admin/tasks#update'
end
