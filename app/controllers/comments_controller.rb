class CommentsController < ApplicationController
  def create
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @feed
    else
      redirect_to @feed
    end
  end
  def destroy
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.find(params[:id])
    if @comment.destroy
      redirect_to feed_path(@feed)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:feed_id, :content)
  end
end