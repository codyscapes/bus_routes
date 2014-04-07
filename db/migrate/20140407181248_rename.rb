class Rename < ActiveRecord::Migration
  def change
    rename_column(:stops, :stop_id, :station_id)
  end
end
