class RemoveHouseOwnerFromUsers < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    remove_column :users, :house_owner, :boolean
=======
  remove_column :users, :house_owner, :boolean
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
