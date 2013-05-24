class Message < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :receive_id, :title, :user_id
  validates_presence_of :content, :receive_id, :title, :user_id
end
