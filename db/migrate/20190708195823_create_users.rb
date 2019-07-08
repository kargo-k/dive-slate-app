class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :certification
      t.integer :age
      t.string :city
      t.integer :total_dives

      t.timestamps
    end
  end
end
