class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(comment_params["post_id"])
    # @comment = @post.comments.build(comment_params)
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @post
    else
      render 'posts/show'
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
