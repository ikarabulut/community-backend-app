class EventSerializer < ActiveModel::Serializer
  attributes :id, :group_id, :name, :date, :start_time, :duration, :address, :volunteers_needed, :description
  belongs_to :group
  has_many :rsvps
  has_many :tags
  has_many :users, through: :rsvps
end
