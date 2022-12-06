class Habit < ApplicationRecord
  belongs_to :user
  has_many :milestones, dependent: :destroy
  validates :title, :start_date, :end_date, presence: true
end
