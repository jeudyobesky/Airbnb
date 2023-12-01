class User < ApplicationRecord
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  validates :phone_number, length: { is: 9 }
  validates :description, length: { minimum: 5 }
end
