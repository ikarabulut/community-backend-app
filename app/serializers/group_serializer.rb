class GroupSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :events
  has_many :group_causes
  attributes :id, :user_id, :name, :email, :address, :website, :mission_statement, :image_url, :description, :user, :events
end
