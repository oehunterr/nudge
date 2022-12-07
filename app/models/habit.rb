class Habit < ApplicationRecord
  belongs_to :user
  has_many :milestones, dependent: :destroy
  validates :title, :start_date, :end_date, presence: true

  include PgSearch::Model
  multisearchable against: [:title, :description]

  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true }
    }
  pg_search_scope :global_search,
    against: [ :title, :description ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
