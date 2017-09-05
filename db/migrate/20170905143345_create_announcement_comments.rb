class CreateAnnouncementComments < ActiveRecord::Migration[5.1]
  def change
    create_table :announcement_comments do |t|
      t.string :body
      t.string :author

      t.timestamps
    end
  end
end
