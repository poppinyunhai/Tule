class PostsController < ApplicationController
  def index
    @post = Post.page(params[:page]).per(5).order("id DESC")
  end

  def show
    @post = Post.find(params[:id])
    @revert = Revert.where(:post_id => @post.id).all
    @user = User.find(@post.user_id)
    @node = Node.find(@post.node_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(params[:post])
    @post.save

    redirect_to posts_path
  end
  def destroy
    @post = Post.find(params[:format])
    @post.destroy
    redirect_to posts_path
  end
end
