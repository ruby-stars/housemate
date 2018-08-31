class RenameAdminRole < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    rename_column :houses, :admin_id, :house_owner_id
=======
  rename_column :houses, :admin_id, :house_owner_id
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
