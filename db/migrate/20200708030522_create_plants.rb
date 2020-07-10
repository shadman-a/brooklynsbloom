class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.string :size
      t.integer :price
      t.string :brightness
      t.string :img_url
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
