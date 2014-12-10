class CreateToolSheds < ActiveRecord::Migration
  def change
    create_table :tool_sheds do |t|
      t.integer :user_id
      t.integer :tool_id

      t.timestamps
    end
  end
end
