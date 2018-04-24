class AddAdminToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :admin_id, :integer
  end
end
