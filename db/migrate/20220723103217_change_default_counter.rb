class ChangeDefaultCounter < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :posts_count, 0
    change_column_default :comments, :comments_count, 0
    change_column_default :likes, :likes_count, 0
  end
end
