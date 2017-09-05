class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :group
      t.integer :author
      t.string :body
      t.string :images
      t.string :hidden
      t.string :mentions

      t.timestamps
    end
  end
end
