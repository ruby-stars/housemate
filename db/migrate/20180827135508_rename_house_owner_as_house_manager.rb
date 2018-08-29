class RenameHouseOwnerAsHouseManager < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    rename_column :users, :house_owner, :house_manager
=======
  rename_column :users, :house_owner, :house_manager
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
