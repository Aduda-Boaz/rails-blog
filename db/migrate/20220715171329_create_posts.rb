class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer  :comments_count
      t.integer :likes_count
      t.string :timestamps
            
      t.timestamps
    end
  end
end
