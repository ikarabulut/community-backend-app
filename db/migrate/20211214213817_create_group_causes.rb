class CreateGroupCauses < ActiveRecord::Migration[6.1]
  def change
    create_table :group_causes do |t|
      t.integer :group_id
      t.integer :cause_id

      t.timestamps
    end
  end
end
