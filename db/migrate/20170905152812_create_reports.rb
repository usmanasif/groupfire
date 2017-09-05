class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.datetime :author
      t.string :title
      t.string :sections
      t.string :visibility
      t.string :visibleTo
      t.string :emailFrequency
      t.string :targets
      t.datetime :sentAt
      t.datetime :dateRange

      t.timestamps
    end
  end
end
