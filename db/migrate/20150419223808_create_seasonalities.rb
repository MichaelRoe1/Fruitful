class CreateSeasonalities < ActiveRecord::Migration
  def change
    create_table :seasonalities do |t|
      t.string :location
      t.references :january, index: true
      t.references :february, index: true
      t.references :march, index: true
      t.references :april, index: true
      t.references :may, index: true
      t.references :june, index: true
      t.references :july, index: true
      t.references :august, index: true
      t.references :september, index: true
      t.references :october, index: true
      t.references :november, index: true
      t.references :december, index: true
    end
  end
end
