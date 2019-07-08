class CreateDives < ActiveRecord::Migration[5.2]
  def change
    create_table :dives do |t|
      t.integer :user_id
      t.integer :diveshop_id
      t.integer :divesite_id
      t.string :date
      t.string :time
      t.integer :water_T
      t.integer :air_T
      t.integer :depth
      t.string :description

      t.timestamps
    end
  end
end
