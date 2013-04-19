class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
	# raise params[:comment][:text].inspect
  	@comment = @post.comments.build(params[:comment])
  	# raise params[:comment][:text].inspect
    @comment.save
  	

  	redirect_to @post
  end

  def destroy
  	@post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
