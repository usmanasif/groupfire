class CreatePostLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :post_likes do |t|
      t.integer :user
      t.timestamps
    end
  end
end
