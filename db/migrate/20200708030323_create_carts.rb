class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.belongs_to :buyer, null: false, foreign_key: true
      t.belongs_to :plant, null: false, foreign_key: true
      t.boolean :purchased

      t.timestamps
    end
  end
end
