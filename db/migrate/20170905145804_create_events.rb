class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :speaker
      t.string :speakerBio
      t.string :venue
      t.string :streetAddress1
      t.string :streetAddress2
      t.string :city
      t.string :state
      t.string :zipCode
      t.string :location
      t.string :endAt
      t.string :timezone
      t.string :description
      t.string :status
      t.string :target
      t.string :visibility
      t.string :announcement
      t.string :draft
      t.string :publishAnnouncement
      t.string :firstReminderAt
      t.string :secondReminderAt
      t.string :reminderDeliveryMethods
      t.string :reminderTarget
      t.string :author
      t.string :superuserContent
      t.string :county
      t.string :mentions
      t.string :updatedAt
      t.string :hasEventChat
      t.string :eventChatId
      t.string :disableAttendees
      t.string :attendeeDeadline

      t.timestamps
    end
  end
end
