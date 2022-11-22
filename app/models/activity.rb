class Activity < ApplicationRecord
  AVAILABLE_CATEGORIES = ["sport", "games", "party", "nature", "culture"]
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :title, :content, :location, presence: true
end
