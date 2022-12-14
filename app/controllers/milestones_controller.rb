class MilestonesController < ApplicationController
  before_action :set_habit, only: [:create, :new]

  def show
    @milestone = Milestone.find(params[:id])
  end

  def new
    @milestone = Milestone.new
    # if current_user.n
    #   redirect_to "/users/sign_in"
    #   flash.notice = "You must be signed in to create a milestone"
  end

  def create
    @habit = Habit.find(params[:habit_id])
    @milestone = Milestone.new(milestone_params)
    @milestone.habit = @habit
    if @milestone.save
      redirect_to habit_path(@habit)
    else
      render :new
    end
  end

  def edit
    @milestone = Milestone.find(params[:id])
  end

  def update
    puts milestone_params
    @milestone = Milestone.find(params[:id])
    if @milestone.update(milestone_params)
      # redirect_to milestone_path(@milestone)
      render json:{}
    else
      render :edit
    end
  end

  def destroy
    @milestone.destroy
    redirect_to habit_path(set_habit), status: :see_other
  end

  private

  def milestone_params
    params.require(:milestone).permit(:title, :description, :start_time, :end_time, :user_id, :habit_id, :completed)
  end

  def set_habit
    @habit = Habit.find(params[:habit_id])
  end
end
