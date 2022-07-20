class Post < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  has_many :comments
  has_many :likes

  def recent_comments
    comments.order(created_at: :desc).limit(6)
  end

  validates :title, presence: true, length: { maximum: 250 }
  validates :comment_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :like_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_save :update_post_count

  private

  def update_post_count
    user.increment!(:posts_count)
  end
end
