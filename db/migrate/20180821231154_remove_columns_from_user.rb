class RemoveColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    remove_column :users, :house_owner_role, :boolean
    remove_column :users, :house_mate_role, :boolean
    remove_column :users, :admin_role, :boolean
    remove_column :users, :user_role, :boolean
=======
  remove_column :users, :house_owner_role, :boolean
  remove_column :users, :house_mate_role, :boolean
  remove_column :users, :admin_role, :boolean
  remove_column :users, :user_role, :boolean
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
