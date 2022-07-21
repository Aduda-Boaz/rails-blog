class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post

  validates :user_id, presence: true

  after_save :update_post_likes_count

  private

  def update_post_likes_count
    post.increment!(:likes_count)
  end
end
