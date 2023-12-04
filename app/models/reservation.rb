class Reservation < ApplicationRecord
  after_create :send_welcome_email
  def send_welcome_email
    "Hello"
  end
  belongs_to :user
  belongs_to :apartment
  validates :user_id, presence: true
  validates :apartment_id, presence: true
  validates :coming_date, presence: true
  validates :leaving_date, presence: true
end
