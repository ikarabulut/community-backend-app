class Cause < ApplicationRecord
  has_many :group_causes
  has_many :groups, through: :group_causes
end
