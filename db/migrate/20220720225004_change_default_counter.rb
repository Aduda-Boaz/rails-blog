class ChangeDefaultCounter < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :post_count, 0
    change_column_default :posts, :comments_count, 0
    change_column_default :posts, :likes_count, 0
  end
end
