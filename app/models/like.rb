class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post, foreign_key: 'post_id'

  after_save :update_post_likes_count

  private

  def update_post_likes_count
    post.update_likes_count
  end
end
