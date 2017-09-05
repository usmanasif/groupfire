class CreateGroupMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :group_members do |t|
      t.integer :group
      t.integer :user
      t.string :position
      t.string :moderator
      t.string :status
      t.string :mute

      t.timestamps
    end
  end
end
