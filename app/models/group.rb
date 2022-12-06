class Group < ApplicationRecord
  belongs_to :habit
  has_many :user_groups
  has_many :users, through: :user_groups
  validates :habit, :name, presence: true
end
