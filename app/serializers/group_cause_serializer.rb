class GroupCauseSerializer < ActiveModel::Serializer
  attributes :id, :group_id, :cause_id
  belongs_to :group
  belongs_to :cause
end
