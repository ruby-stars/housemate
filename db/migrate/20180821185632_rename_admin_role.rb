class RenameAdminRole < ActiveRecord::Migration[5.1]
  def change
  	rename_column :houses, :admin_id, :house_owner_id
  end
end
