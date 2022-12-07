Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :habits
  resources :pages
  #   resources :milestones, except: [:index]
  # end
  # resources :milestones, only: [:destroy]
  # delete "milestones/:id", to: "milestones#destroy", as: :milestone
end
# resources :groups
# resources :user_groups
# get "habit", to: "pages#habit"
# ~
# patch "habits/:id/active", to: "habits#active_toggle", as: :active_toggle
# index, new, create, show, edit, update, destroy
