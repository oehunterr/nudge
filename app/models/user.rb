class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :habits
  has_many :milestones, through: :habits
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
