class NodesController < ApplicationController
  def show
    @post = Post.where(:node_id => @node.id).all
  end
end
