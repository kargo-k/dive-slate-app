class CreateDiveMarineanimals < ActiveRecord::Migration[5.2]
  def change
    create_table :dive_marineanimals do |t|
      t.integer :dive_id
      t.integer :marineanimal_id
      t.timestamps
    end
  end
end
