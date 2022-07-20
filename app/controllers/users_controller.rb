class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.includes(:post).find(params[:id])
  end
end
