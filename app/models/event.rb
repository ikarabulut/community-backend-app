class Event < ApplicationRecord
  belongs_to :group
  has_many :rsvps
  has_many :event_tags
  has_many :tags, through: :event_tags
  has_many :users, through: :rsvps
end
