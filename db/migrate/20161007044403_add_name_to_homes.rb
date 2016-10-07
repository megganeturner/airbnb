class AddNameToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :name, :text
  end
end
