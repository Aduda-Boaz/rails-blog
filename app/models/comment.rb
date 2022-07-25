class Comment < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  belongs_to :post

  after_save :update_post_counts

  private

  def update_post_counts
    post.increment!(:comment_count)
  end
end
