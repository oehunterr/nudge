class NotificationsController < ApplicationController
  def edit
    @notification = Notification.find(params[:id])
  end
end
