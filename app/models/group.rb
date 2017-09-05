class Group < ApplicationRecord

	belongs_to :type, class_name: "GroupType",foreign_key: "type"  
	has_many :group_members
	has_many :group_attachments
	has_many :post
	belongs_to :user

end
