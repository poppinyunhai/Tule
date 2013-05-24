class Revert < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    attr_accessible :post_id, :revertc, :user_id
    validates_presence_of :post_id, :revertc, :user_id
    validates_length_of :revertc, :maximum => 500
end
