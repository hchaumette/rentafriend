class Activity < ApplicationRecord
  AVAILABLE_CATEGORIES = ["sport", "games", "party", "nature", "culture"]
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :title, :content, :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model

  pg_search_scope :search_by_activity,

  against: [ :title, :content, :location, :category],
  using: {
    tsearch: { prefix: true }
  }

end
