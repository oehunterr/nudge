class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @habit = Habit.all
    @milestone = Milestone.all
    @user = current_user
  end
end
