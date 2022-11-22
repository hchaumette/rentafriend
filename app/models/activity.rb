class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :title, :content, :location, presence: true
end
