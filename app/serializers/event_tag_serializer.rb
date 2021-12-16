class EventTagSerializer < ActiveModel::Serializer
  attributes :id, :event_id, :tag_id
  belongs_to :event
  belongs_to :tag
end
