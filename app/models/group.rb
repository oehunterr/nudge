class Group < ApplicationRecord
  belongs_to :habit
  has_many :user_groups, dependent: :destroy
  has_many :users, through: :user_groups
  validates :habit, :name, presence: true
end
