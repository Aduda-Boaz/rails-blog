class PostsController < ApplicationController
  @posts = Post.where(author_id: params[:user_id])
  @comments = Comment.all
  @users = User.all

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_count, :likes_count, numericality: { only_integer: true }

  after_save :update_post_count

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  private

  def update_post_count
    user.increment!(:post_count)
  end
end
