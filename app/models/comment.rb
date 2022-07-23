class Comment < ApplicationRecord
  belongs_to :aurhor, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  after_save :update_post_comments_count

  private

  def update_post_comments_count
    post.update(:comments_count, post.comments.count)
  end
end
