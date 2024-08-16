class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.post
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes: [:username])
  end
end
