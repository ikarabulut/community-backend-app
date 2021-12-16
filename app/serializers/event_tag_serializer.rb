class EventTagSerializer < ActiveModel::Serializer
  attributes :id, :event_id, :tag_id
  belongs_to :group
  belongs_to :cause
end
