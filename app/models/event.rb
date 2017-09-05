class Event < ApplicationRecord
	has_many :attendee
	has_many :event_comment
	has_many :event_like
	belongs_to :user
end
