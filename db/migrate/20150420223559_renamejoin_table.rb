class RenamejoinTable < ActiveRecord::Migration
  def change
  	rename_table :produce_seasonalities, :produces_seasonalities
  end
end
