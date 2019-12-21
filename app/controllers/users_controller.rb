class UsersController < ApplicationController
  before_action :correct_user, only: [:show]

  def show
    @user = User.find(params[:id]) 
  end

  private
  def correct_user
    user = User.find(params[:id])
    if current_user != user
      redirect_to user_path(current_user)
    end
  end
end
