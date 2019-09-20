class CreateMarineanimals < ActiveRecord::Migration[5.2]
  def change
    create_table :marineanimals do |t|
      t.string :name
      t.string :url 
      t.timestamps
    end
  end
end
