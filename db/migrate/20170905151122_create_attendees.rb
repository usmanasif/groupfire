class CreateAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.string :response
      t.string :note
      t.integer :user
      t.integer :event

      t.timestamps
    end
  end
end
