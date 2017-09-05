class CreateEventComments < ActiveRecord::Migration[5.1]
  def change
    create_table :event_comments do |t|
      t.string  :body
      t.integer :author

      t.timestamps
    end
  end
end
