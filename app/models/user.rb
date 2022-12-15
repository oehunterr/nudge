class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :habits
  has_many :notifications
  has_many :milestones, through: :habits
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def read_notifications
    self.notifications.where(read: true)
  end

  def unread_notifications
    self.notifications.any? { |notification| !notification.read }
  end

  def screen_time
    sum = 0
    self.read_notifications.each { |notification| sum += notification.answer.to_i }
    sum/self.notifications.size
  end

  def screen_time_total
    sum = 0
    self.read_notifications.each { |notification| sum += notification.answer.to_i }
    sum
  end
end
