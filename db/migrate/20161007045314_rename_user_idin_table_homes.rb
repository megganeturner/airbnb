class RenameUserIdinTableHomes < ActiveRecord::Migration
  def change
    change_column :homes, :user_id_integer, 'integer USING CAST(user_id_integer AS integer)'
    rename_column :homes, :user_id_integer, :user_id
  end
end
