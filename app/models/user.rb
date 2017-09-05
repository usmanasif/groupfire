class User < ApplicationRecord
	has_many :announcement
	has_many :event
	has_many :group
	has_many :post
	belongs_to :app_setting
end
