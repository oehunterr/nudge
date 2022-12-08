class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @user = current_user
  end

  def dashboard
    @user = current_user
    @habit = @user.habits
    @milestone = Milestone.all
  end
end
