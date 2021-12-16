class CauseSerializer < ActiveModel::Serializer
  attributes :id, :cause
  has_many :group_causes
end
