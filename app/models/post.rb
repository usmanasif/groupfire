class Post < ApplicationRecord

	has_many :post_comment
	has_many :post_like
	belongs_to :group
	belongs_to :user

end
