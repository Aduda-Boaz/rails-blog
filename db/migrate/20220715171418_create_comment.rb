class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.string :timestamps
      
      t.timestamps
    end
  end
end
