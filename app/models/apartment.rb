class Apartment < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :user_id
  belongs_to :city
  validates :user_id, presence: true
  validates :city_id, presence: true
  validates :price_per_night,
    presence: true,
    length: { in: 1..4 }
  validates :description,
    presence: true,
    length: { in: 10..30 }
  validates :wifi, presence: true
  has_many :reservations
end
