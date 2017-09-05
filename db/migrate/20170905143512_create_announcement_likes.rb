class CreateAnnouncementLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :announcement_likes do |t|
      t.string :user

      t.timestamps
    end
  end
end
