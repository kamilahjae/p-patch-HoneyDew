class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :location

      t.timestamps
    end
  end
end
