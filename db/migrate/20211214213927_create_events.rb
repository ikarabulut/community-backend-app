class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :group_id
      t.string :name
      t.date :date
      t.time :start_time
      t.integer :duration
      t.string :address
      t.integer :volunteers_needed
      t.text :description

      t.timestamps
    end
  end
end
