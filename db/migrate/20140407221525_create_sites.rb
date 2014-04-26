class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :capacity
      t.string :surface
      t.string :name
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
