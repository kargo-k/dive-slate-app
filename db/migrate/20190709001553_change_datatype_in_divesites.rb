class ChangeDatatypeInDivesites < ActiveRecord::Migration[5.2]
  def change
    change_column :divesites, :latitude, :string
    change_column :divesites, :longitude, :string
  end
end
