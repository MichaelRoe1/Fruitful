class CreateProduces < ActiveRecord::Migration
  def change
    create_table :produces do |t|
      t.string :name
      t.string :img_url
    end
  end
end
