class Event < ApplicationRecord
  belongs_to :group
  has_many :rsvps
  has_many :tags
  has_many :users, through: :rsvps
end
