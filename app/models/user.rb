class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :groups
  has_many :rsvps
  has_many :events, through: :rsvps
end
