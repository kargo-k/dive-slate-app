class RenameLongitutdeInDivesitesToLongitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :divesites, :longitutde, :longitude
  end
end
