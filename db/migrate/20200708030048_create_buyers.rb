class CreateBuyers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :username
      t.string :address
      t.string :img_url
      t.string :password_digest

      t.timestamps
    end
  end
end
