class CreateDiveEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :dive_equipments do |t|
      t.integer :dive_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
