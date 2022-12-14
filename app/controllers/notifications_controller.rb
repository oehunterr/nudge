class NotificationsController < ApplicationController
  def edit
    @notification = Notification.find(params[:id])
  end

  def update
    @notification = Notification.find(params[:id])
    if @notification.update(notification_params)
      @notification.update(read: true)
      flash[:notice] = "Your screen time has been added!"
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def notification_params
    params.require(:notification).permit(:answer)
  end
end

# create a model called Notification
# a user:references
# chrone job - define a task similar to our user:update_all
# which generates a Notification.new(user: user, read: false, answer: 2h) for every user
# in the navbar, we display a badge when the user has an unread notification
# when the user clicks on the notification, we get to the edit of the notification where we save his answer
# retirieve everyday's screen time by doing user.notificaitons.each {|not| sum += not.answer}/user.notifications.size
