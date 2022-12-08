class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @habit = current_user.habits
    @milestone = current_user.milestones
  end

  def dashboard
    @habit = current_user.habits
    @milestone = current_user.milestones
  end

  def perfomance
  end
end
