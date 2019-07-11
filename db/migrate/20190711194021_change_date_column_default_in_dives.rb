class ChangeDateColumnDefaultInDives < ActiveRecord::Migration[5.2]
  def change
    change_column_default :dives, :date, DateTime.new
  end
end
