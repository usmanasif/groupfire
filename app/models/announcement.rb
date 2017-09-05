class Announcement < ApplicationRecord

	belongs_to :category, class_name: "AnnouncementCategory",foreign_key: "category"  
	has_many :announcement_comment
	has_many :announcement_like
	belongs_to :user

end
