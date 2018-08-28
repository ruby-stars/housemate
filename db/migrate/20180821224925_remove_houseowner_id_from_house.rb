class RemoveHouseownerIdFromHouse < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :house_owner_id, :integer
  end
end
