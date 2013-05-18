class Revert < ActiveRecord::Base
	belongs_to :user
    belongs_to :post
    attr_accessible :post_id, :revertc, :user_id
end
