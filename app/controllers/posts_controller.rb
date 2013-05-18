class PostsController < ApplicationController
	def list
		@post = Post.page(params[:page]).per(5)
	end

	def show
		@post = Post.find(params[:id])
		@revert = Revert.where(:post_id => @post.id).all
		@user = User.find(@post.user_id)
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.build(params[:post])
		@post.save

		redirect_to postlist_path
	end
end
