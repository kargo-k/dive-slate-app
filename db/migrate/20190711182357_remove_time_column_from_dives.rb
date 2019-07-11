class RemoveTimeColumnFromDives < ActiveRecord::Migration[5.2]
  def change
    remove_column :dives, :time
  end
end
