class CommentsController < ApplicationController
  
  def create
    @post = Post.find(params[:comment][:post_id])
    @comment = @post.comments.create!(params[:comment])
    respond_to do |format|  
       format.html { redirect_to @post }  
       format.js
      end  
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Successfully updated comment."
      redirect_to @comment
    else
      render :action => 'edit'
    end
  end
end
