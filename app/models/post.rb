class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def recent_comments
    comments.order(created_at: :desc).limit(6)
  end

  validates :title, presence: true, length: { maximum: 250 }
  validates :comment_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_save :update_post_count

  private

  def update_post_count
    user.update_posts_count
  end
end
