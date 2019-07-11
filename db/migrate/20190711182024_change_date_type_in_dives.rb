class ChangeDateTypeInDives < ActiveRecord::Migration[5.2]
  def up
    change_column :dives, :date, :datetime
  end

  def down
    change_column :dives, :date, :string
  end
end
