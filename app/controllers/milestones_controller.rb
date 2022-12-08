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
    @milestone.user = current_user
    @milestone.habit = @habit
    if @milestone.save
      redirect_to habit_path(@habit_id)
    else
      render :new
    end
  end

  def edit
    @milestone = Milestone.find(params[:id])
  end

  def update
    if @milestone.update(milestone_params)
      redirect_to milestone_path(@milestone)
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
    params.require(:milestone).permit(:title, :description, :start_time, :end_time, :user_id, :habit_id)
  end

  def set_habit
    @habit = Habit.find(params[:habit_id])
  end
end

# create a model called Notification
# a user:references
# chrone job - define a task similar to our user:update_all
# whcih generates a Notification.new(user: user, read: false, answer: 2h) for every user
# in the navbar, we display a badge when the user has an unread notification
# when the user clicks on the notification, we get to the edit of the notification where we save his answer
# retirieve everyday's screen time by doing user.notificaitons.each {|not| sum += not.answer}/user.notifications.size
