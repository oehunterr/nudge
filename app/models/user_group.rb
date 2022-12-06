class UserGroup < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :user, :group, uniqueness:true, presence:true
end
