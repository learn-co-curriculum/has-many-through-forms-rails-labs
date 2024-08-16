class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    user = User.new
  end

  def create
    user = User.find_or_create_by(username: user_params[:username])
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
