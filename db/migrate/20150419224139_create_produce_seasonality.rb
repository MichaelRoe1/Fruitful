class CreateProduceSeasonality < ActiveRecord::Migration
  def change
    create_table :produce_seasonalities do |t|
    	t.integer :produce_id
    	t.integer :seasonality_id
    end
  end
end
