Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  get "perfomance", to: "pages#perfomance"
  get "dashboard", to: "pages#dashboard"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :habits do
    resources :milestones, except: [:index]
  end
  resources :milestones, only: [:destroy]
  # resources :pages
  # end
  # delete "milestones/:id", to: "milestones#destroy", as: :milestone
end

# resources :groups
# resources :user_groups
# ~
# patch "habits/:id/active", to: "habits#active_toggle", as: :active_toggle
# index, new, create, show, edit, update, destroy
