namespace :user do
  desc "Asking all users how many hours they spend on social media per day"
  task notify_all: :environment do
    # users = User.all
    puts "You've created a notification for your user"
    # users.each do |user|
    NotificationJob.perform_now
    # end
  end
end
