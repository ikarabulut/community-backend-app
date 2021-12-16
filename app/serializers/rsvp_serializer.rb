class RsvpSerializer < ActiveModel::Serializer
  attributes :id, :event_id, :rsvp_type
  belongs_to :event
  belongs_to :user
end
