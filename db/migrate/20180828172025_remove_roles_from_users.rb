class RemoveRolesFromUsers < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    remove_column :users, :admin, :boolean
    remove_column :users, :house_manager, :boolean
    remove_column :users, :house_mate, :boolean
    remove_column :users, :user, :boolean
=======
  remove_column :users, :admin, :boolean
  remove_column :users, :house_manager, :boolean
  remove_column :users, :house_mate, :boolean
  remove_column :users, :user, :boolean
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
