class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :item
      t.integer :quantity
      t.text :description
      t.text :pic

      t.timestamps
    end
  end
end
