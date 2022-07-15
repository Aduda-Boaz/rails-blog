class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def recent_comments
    comments.order(created_at: :desc).limit(6)
  end

  private

  def update_post_count
    user.update_posts_count
  end
end
