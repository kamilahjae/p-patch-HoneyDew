class RemoveQuanitityAddTotalAndAvailable < ActiveRecord::Migration
  def change
    remove_column :tools, :quantity
    add_column :tools, :available, :integer
    add_column :tools, :total, :integer
  end
end
