class RenameHouseOwnerAsHouseManager < ActiveRecord::Migration[5.1]
  def change
  rename_column :users, :house_owner, :house_manager
  end
end
