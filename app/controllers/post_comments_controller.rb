class PostCommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @post_comment = @post.post_comments.create!(params[:comment])
    respond_to do |format|
      format.html { redirect_to @post }
      format.js
    end
  end
  
end
