class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :text
      t.integer  :comment_count
      t.integer :like_count
            
      t.timestamps
    end
  end
end
