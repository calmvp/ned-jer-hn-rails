class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = session[:user_id]
    @comment.save
    @post = Post.find(params[:comment][:post_id])
    redirect_to(@post)
  end
end
