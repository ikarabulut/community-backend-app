class GroupSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :email, :address, :website, :mission_statement
  belongs_to :user
  has_many :events
  has_many :group_causes
end
