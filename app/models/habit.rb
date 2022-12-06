class Habit < ApplicationRecord
  belongs_to :milestone
  belongs_to :user
  validates :start_date, :end_date, :title, presence:true
  validates :user, :milestone, uniqueness:true, presence:true
end
