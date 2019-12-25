class CommentsController < ApplicationController
  before_action :set_feed

  def create
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.build(comment_params)
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.js { render :errors }
      end
    end
  end

  def show
    @comments = @feed.comments
    @comment = @feed.comment.build
  end

  def edit
    @comment = @feed.comments.find(params[:id])
  end

  def update
    @comment = @feed.comments.find(params[:id])
    
    respond_to do |format|
      if @comment.update(comment_params)
        format.js { render :index }
      else
        format.js { render :errors }
      end
    end
  end

  def destroy
    @comment = @feed.comments.find(params[:id])

    respond_to do |format|
      if current_user.id == @comment.user_id
        @comment.destroy
        format.js { render :index }
      else
        format.html { redirect_to feed_path(@feed), notice: '削除できません' }
      end
    end
  end

  private
  def set_feed
    @feed = Feed.find(params[:feed_id])
  end

  def comment_params
    params.require(:comment).permit(:feed_id, :content)
  end
end