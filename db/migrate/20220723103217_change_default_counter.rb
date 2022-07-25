class ChangeDefaultCounter < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :post_count, 0
    change_column_default :posts, :like_count, 0
    change_column_default :posts, :comment_count, 0
  end
end
