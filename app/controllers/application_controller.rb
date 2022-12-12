class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :search_habit

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def search_habit
    if params[:query].present?
      sql_query = <<~SQL
        habits.title @@ :query
        OR habits.description @@ :query
        OR users.first_name @@ :query
        OR users.last_name @@ :query
      SQL
      @search_results = Habit.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @search_results = Habit.all
    end
  end
end
