class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post

  after_save :update_post_comments_count

  private

  def update_post_comments_count
    post.increment!(:comments_count)
  end
end
