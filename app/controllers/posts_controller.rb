class PostsController < ApplicationController
  def index
    @users = User.all
    @posts = Post.where(author_id: params[:user_id])
    @comments = Comment.all
  end

  def show
    @users = User.all
    @post = Post.find(params[:id])
    @comments = Comment.all
  end
end
