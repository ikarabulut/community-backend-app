class RsvpSerializer < ActiveModel::Serializer
  belongs_to :event
  belongs_to :user
  attributes :id, :event_id, :user_id, :rsvp_type, :event, :user

end
