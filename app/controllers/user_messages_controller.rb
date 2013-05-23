class UserMessagesController < ApplicationController
	before_filter :find_receive_id
	def index
		 @message = Message.where(:receive_id => current_user.id).order("id DESC")
		
	end
	def new
		@message = Message.new
	end
	def create
		@message = Message.create(:user_id => current_user.id, 
			:content => params[:message][:content], 
			:title =>params[:message][:title], 
			:receive_id => @user.id)
		redirect_to user_messages_path
	end
	def show
		@message = Message.find(params[:message])
	end

	protected
	def find_receive_id
  		@user = User.find(params[:user_id])
	end
end
