class RmcolumninLoaction < ActiveRecord::Migration
  def change
    remove_column :locations, :location_id
  end
end
