class NotificationJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    users = User.all
    users.each do |user|
      Notification.create(user: user, read: false)
    end
  end
end
