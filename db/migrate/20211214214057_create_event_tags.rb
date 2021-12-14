class CreateEventTags < ActiveRecord::Migration[6.1]
  def change
    create_table :event_tags do |t|
      t.integer :event_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
