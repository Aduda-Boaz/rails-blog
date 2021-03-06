# has_many :posts, :likes, :comments, :foreign_key => "author_id"

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.integer :post_count, default: 0
      
      t.timestamps
    end
  end
end
