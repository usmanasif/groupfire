class GroupAttachment < ApplicationRecord
	belongs_to :group
	belongs_to :post
	belongs_to :user

end
