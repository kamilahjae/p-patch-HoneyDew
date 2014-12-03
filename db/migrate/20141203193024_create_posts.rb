class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :author
      t.text :content
      t.text :pic

      t.timestamps
    end
  end
end
