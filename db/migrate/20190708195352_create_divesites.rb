class CreateDivesites < ActiveRecord::Migration[5.2]
  def change
    create_table :divesites do |t|
      t.string :name
      t.integer :lattitude
      t.integer :longitutde
      t.string :description

      t.timestamps
    end
  end
end
