Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
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

  resources :pages, only: [] do
    collection do
      get 'milestones_completion_by_habit'
    end
  end

  # resources :users, only: %i[update]

  resources :notifications, only: %i[edit update]

  resources :groups do
    resources :user_groups, only: %i[create new]
  end
end
