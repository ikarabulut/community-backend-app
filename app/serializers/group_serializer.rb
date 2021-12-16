class GroupSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :email, :address, :website, :mission_statement
  belongs_to :group
  has_many :rsvps
  has_many :tags
  has_many :users, through: :rsvps
end
