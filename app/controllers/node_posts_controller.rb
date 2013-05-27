class NodePostsController < ApplicationController
  before_filter :find_node
	def index
		@post = Post.where(:node_id => @node.id)	
		
	end



	protected
	def find_node
		@node = Node.find(params[:node_id])
		
	end
end
