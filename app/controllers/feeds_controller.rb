class FeedsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_feed, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @q = Feed.all.ransack(params[:q])
    @feeds = @q.result(distinct: true).order(id: :desc).page(params[:page])
  end

  def new
    @feed = Feed.new
    # gon.pon = ENV['Rakuten_API_KEY']
  end

  def edit
    # gon.pon = ENV['Rakuten_API_KEY']
  end

  def create
    @feed = Feed.new(feed_params)
    @feed.user_id = current_user.id
    if @feed.save
      redirect_to feeds_path, notice: "登録が完了しました"
    else
      render 'new'
    end
  end

  def update
    if @feed.update(feed_params)
      redirect_to feeds_path, notice: "登録情報が更新されました"
    else
      render 'edit'
    end
  end

  def show
    @comments = @feed.comments
    @comment = Comment.new
  end

  def destroy
    @feed.destroy
    redirect_to feeds_url, notice: "登録情報が削除されました"
  end

  private
  def set_feed
    @feed = Feed.find(params[:id])
  end

  def feed_params
    params.require(:feed).permit(
      :title,
      :content,
      :isbn,
      :code
    )
  end

  def correct_user
    @feed = Feed.find(params[:id])
    if current_user.id != @feed.user.id
      redirect_to feeds_path, notice: '作成者ではありません。'
    end
  end
end
