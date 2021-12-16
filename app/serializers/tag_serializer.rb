class TagSerializer < ActiveModel::Serializer
  attributes :id, :tag
  has_many :event_tags
  has_many :events, through: :event_tags
end
