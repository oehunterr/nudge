Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
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

# <div class="grid first-line">
#     <%= link_to habits_path do %>
#       <div class="cards card-habit">
#         <div class="habcolor">
#           <div class="icons">
#             <i class="fa-solid fa-business-time"></i>
#           </div>
#         </div>
#         <h6>Habits</h6>
#         <p><%= @milestone.size %> habits</p>
#       </div>
#     <%end%>
#     <%= link_to do %>
#       <div class="cards card-milestones">
#         <div class="icons milcolour ">
#           <i class="fa-solid fa-bullseye "></i>
#         </div>
#         <h6>Milestones</h6>
#         <p><%= @milestone.size %> milestones</p>
#       </div>
#     <%end%>
#   </div>
#   <div class="grid second-line">
#     <%= link_to do %>
#       <div class="cards card-perfomance">
#         <div class="icons perfomancecolor">
#           <i class="fa-solid fa-chart-simple"></i>
#         </div>
#         <h6>Perfomance</h6>
#       </div>
#     <%end%>

#     <%= link_to habits_path do %>
#       <div class="cards card-groups">
#             <div class="icons groupcolor">
#               <i class="fa-solid fa-users-viewfinder"></i>
#             </div>
#         <h6>Groups</h6>
#       </div>
#     <%end%>
#   </div>
