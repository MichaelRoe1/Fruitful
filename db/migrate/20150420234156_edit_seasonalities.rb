class EditSeasonalities < ActiveRecord::Migration
  def change
  	remove_column :seasonalities, :january_id
  	remove_column :seasonalities, :february_id
  	remove_column :seasonalities, :march_id
  	remove_column :seasonalities, :april_id
  	remove_column :seasonalities, :may_id
  	remove_column :seasonalities, :june_id
  	remove_column :seasonalities, :july_id
  	remove_column :seasonalities, :august_id
  	remove_column :seasonalities, :september_id
  	remove_column :seasonalities, :october_id
  	remove_column :seasonalities, :november_id
  	remove_column :seasonalities, :december_id
  	add_column :seasonalities, :month, :string
  	add_column :seasonalities, :location_id, :integer
  end
end
