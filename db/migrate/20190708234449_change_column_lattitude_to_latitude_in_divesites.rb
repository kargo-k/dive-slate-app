class ChangeColumnLattitudeToLatitudeInDivesites < ActiveRecord::Migration[5.2]
  def change
    rename_column :divesites, :lattitude, :latitude
  end
end
