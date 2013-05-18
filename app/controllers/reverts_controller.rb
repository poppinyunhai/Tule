class RevertsController < ApplicationController
	before_filter :find_post
	def new
		@revert = Revert.new
	end

	def create
		@revert = Revert.create(:revertc => params[:revert]
			[:revertc], :user_id => current_user.id)		
	end

	protected
	def find_post
  		@post = post.find( params[:post_id] )
	end
end
