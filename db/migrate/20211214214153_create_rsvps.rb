class CreateRsvps < ActiveRecord::Migration[6.1]
  def change
    create_table :rsvps do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :rsvp_type

      t.timestamps
    end
  end
end
