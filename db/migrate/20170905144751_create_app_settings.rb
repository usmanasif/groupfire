class CreateAppSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :app_settings do |t|
      t.string :key
      t.string :value
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
