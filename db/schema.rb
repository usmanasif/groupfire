# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170905164848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcement_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcement_comments", force: :cascade do |t|
    t.string "body"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcement_likes", force: :cascade do |t|
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcements", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "type"
    t.string "author"
    t.string "body"
    t.string "publishOn"
    t.string "sendNotification"
    t.string "target"
    t.string "visibility"
    t.string "category"
    t.string "expireOn"
    t.string "timezone"
    t.string "event"
    t.string "notificationTarget"
    t.string "notifications"
    t.string "scheduled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "app_settings", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendees", force: :cascade do |t|
    t.string "response"
    t.string "note"
    t.integer "user"
    t.integer "event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "parent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_comments", force: :cascade do |t|
    t.string "body"
    t.integer "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_likes", force: :cascade do |t|
    t.integer "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "speaker"
    t.string "speakerBio"
    t.string "venue"
    t.string "streetAddress1"
    t.string "streetAddress2"
    t.string "city"
    t.string "state"
    t.string "zipCode"
    t.string "location"
    t.string "endAt"
    t.string "timezone"
    t.string "description"
    t.string "status"
    t.string "target"
    t.string "visibility"
    t.string "announcement"
    t.string "draft"
    t.string "publishAnnouncement"
    t.string "firstReminderAt"
    t.string "secondReminderAt"
    t.string "reminderDeliveryMethods"
    t.string "reminderTarget"
    t.string "author"
    t.string "superuserContent"
    t.string "county"
    t.string "mentions"
    t.string "updatedAt"
    t.string "hasEventChat"
    t.string "eventChatId"
    t.string "disableAttendees"
    t.string "attendeeDeadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_attachments", force: :cascade do |t|
    t.integer "group"
    t.integer "post"
    t.string "file"
    t.string "contentType"
    t.string "name"
    t.integer "author"
    t.string "thumbImage"
    t.string "fileUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_members", force: :cascade do |t|
    t.integer "group"
    t.integer "user"
    t.string "position"
    t.string "moderator"
    t.string "status"
    t.string "mute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_types", force: :cascade do |t|
    t.integer "group"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "parent"
    t.integer "type"
    t.string "description"
    t.string "superGroup"
    t.string "name"
    t.string "show"
    t.string "permission"
    t.string "visibility"
    t.string "joinability"
    t.string "hasGroupFeed"
    t.string "hasGroupChat"
    t.string "groupChatId"
    t.string "hidden"
    t.string "superuserContent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.string "body"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_likes", force: :cascade do |t|
    t.integer "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "group"
    t.integer "author"
    t.string "body"
    t.string "images"
    t.string "hidden"
    t.string "mentions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "author"
    t.string "title"
    t.string "sections"
    t.string "visibility"
    t.string "visibleTo"
    t.string "emailFrequency"
    t.string "targets"
    t.datetime "sentAt"
    t.datetime "dateRange"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "email"
    t.string "username"
    t.datetime "joinAt"
    t.string "status"
    t.string "token"
    t.string "phoneNumber"
    t.string "online"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
