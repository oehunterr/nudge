class Milestone < ApplicationRecord
  belongs_to :habit
  validates :title, :start_time, :end_time, presence: true
end
