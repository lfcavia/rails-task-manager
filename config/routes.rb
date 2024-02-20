Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # --> CREATE
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # --> READ
  root to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task

  # --> UPDATE
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # --> DELETE
  delete "tasks/:id", to: "tasks#destroy", as: :delete

  # ------> sustituible POR:(PERO hay que cambiar nombres en los files a los path naming by default) resources :tasks
end
