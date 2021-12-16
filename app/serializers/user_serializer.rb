class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :groups
  has_many :rsvps
  has_many :events, through: :rsvps
end
