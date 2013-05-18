class Post < ActiveRecord::Base
	has_many :reverts
	attr_accessible :content, :title, :user_id
end
