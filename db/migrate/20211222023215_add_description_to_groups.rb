class AddDescriptionToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :description, :text
  end
end
