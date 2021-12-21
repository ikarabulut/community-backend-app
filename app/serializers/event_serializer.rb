class EventSerializer < ActiveModel::Serializer
  attributes :id, :group_id, :name, :date, :start_time, :duration, :address, :volunteers_needed, :description, :image_url
  belongs_to :group
  has_many :rsvps
  has_many :event_tags
  has_many :tags, through: :event_tags
  has_many :users, through: :rsvps
end
