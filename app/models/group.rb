class Group < ApplicationRecord
  belongs_to :habit
  validates :name, :habit_id, uniqueness:true, presence:true
end
