class AddAuthorToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :author, :string
  end
end
