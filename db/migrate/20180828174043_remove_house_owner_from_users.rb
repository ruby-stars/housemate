class RemoveHouseOwnerFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :house_owner, :boolean
  end
end
