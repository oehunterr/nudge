class HabitsController < ApplicationController

  def index
    @habits = Habit.all
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def new
    @habit = Habit.new
    if current_user.nil?
      redirect_to "/users/sign_in"
      flash.notice = "You must be signed in to create a habit"
    end
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.user_id = current_user.id
    if @habit.save
      redirect_to habit_path(@habit)
      # try change to route back to index
    else
      render :new
    end
  end

  def edit
    @habit = Habit.find(params[:id])
  end

  def update
    if @habit.update(habit_params)
      redirect_to habit_path(@habit)
    else
      render :edit
    end
  end

  def destroy
    @habit.destroy
    redirect_to habits_path, status: :see_other
  end

  private

  def habit_params
    params.require(:habit).permit(:title, :description, :start_date, :end_date)
  end
end
