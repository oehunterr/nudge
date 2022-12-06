class Milestone < ApplicationRecord
  validates :start_time, :end_time, :title, presence:true
end
