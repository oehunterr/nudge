Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
  #   resources :milestones, except: %i[index]
  #   end
  #   delete "milestones/:id", to: "milestones#destroy" as: :milestone
  #   resources :groups
  #   resources :user_groups
  # end
  # only: %i[new create]
  # get "habit", to: "pages#habit"
  # patch "habits/:id/active", to: "habits#active_toggle", as: :active_toggle
  # index, new, create, show, edit, update, destroy
  # roll back after mig, rails d migration before mig
