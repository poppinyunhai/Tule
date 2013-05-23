class Post < ActiveRecord::Base
	has_attached_file :avatar,
	:styles => { :original => '250x250>',   
                               :small => '50x50' }
	has_many :reverts
	belongs_to :node
  attr_accessible :content, :node_id, :title, :user_id, :avatar
end
