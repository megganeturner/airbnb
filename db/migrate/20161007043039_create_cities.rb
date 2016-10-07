class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.text :country
      t.text :image

      t.timestamps null: false
    end
  end
end
