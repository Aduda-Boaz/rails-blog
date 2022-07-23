class ChangeForeignKeyName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :user_id, :user_id_id
    rename_column :comments, :author_id, :author_id_id
    rename_column :likes, :user_id, :user_id_id
  end
end
