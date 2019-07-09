class RemoveSpecColumnFromEquipment < ActiveRecord::Migration[5.2]
  def change
    remove_column :equipment, :specs
  end
end
