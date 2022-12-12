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
    @milestone = current_user.milestones
      @milestone.each do |item|
        if item.completed?
          time_diff = item.end_time.strftime('%d').to_i - item.start_time.strftime('%d').to_i
          item.duration = time_diff * 24
          item.save!
        else
          return 0
        end
      end
  end
end
