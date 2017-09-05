class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :url
      t.string :type
      t.string :author
      t.string :body
      t.string :publishOn
      t.string :sendNotification
      t.string :target
      t.string :visibility
      t.string :category
      t.string :expireOn
      t.string :timezone
      t.string :event
      t.string :notificationTarget
      t.string :notifications
      t.string :scheduled

      t.timestamps
    end
  end
end
