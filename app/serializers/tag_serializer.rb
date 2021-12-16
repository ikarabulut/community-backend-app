class TagSerializer < ActiveModel::Serializer
  attributes :id, :tag
  has_many :event_tags
end
