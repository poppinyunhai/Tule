class PostRevertsController < ApplicationController
	before_filter :find_post
	def new
		@revert = Revert.new		
	end

	def create
		@revert = Revert.create(:revertc => params[:revert][:revertc], 
			:user_id => current_user.id, :post_id => @post.id)
		if @revert.save
			redirect_to post_path(:id => @post.id)
		else
			render 'new'
		end
	end

	protected
	def find_post
  		@post = Post.find( params[:post_id] )
	end
end
