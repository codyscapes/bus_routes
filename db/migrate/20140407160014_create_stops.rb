class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.column :line_id, :integer
      t.column :stop_id, :integer
      t.timestamps
    end
  end
end
