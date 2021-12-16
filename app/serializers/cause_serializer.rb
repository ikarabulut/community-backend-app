class CauseSerializer < ActiveModel::Serializer
  attributes :id, :cause
  has_many :group_causes
  has_many :groups, through: :group_causes
end
