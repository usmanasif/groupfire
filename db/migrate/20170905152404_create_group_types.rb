class CreateGroupTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :group_types do |t|
      t.integer :group
      t.integer :type

      t.timestamps
    end
  end
end
