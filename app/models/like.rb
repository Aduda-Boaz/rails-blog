class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post

  def update_post_likes_count
    post.increment!(:likes_count)
  end
end
