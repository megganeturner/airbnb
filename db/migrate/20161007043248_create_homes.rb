class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.integer :city_id
      t.string :user_id_integer
      t.integer :max_guests
      t.integer :bathrooms
      t.time :check_in
      t.time :check_out
      t.text :description
      t.text :image
      t.float :price

      t.timestamps null: false
    end
  end
end
