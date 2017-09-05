class CreateAnnouncementCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :announcement_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
