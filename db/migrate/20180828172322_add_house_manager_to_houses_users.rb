class AddHouseManagerToHousesUsers < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    add_column :houses_users, :house_manager, :boolean, default: false
=======
  add_column :houses_users, :house_manager, :boolean, default: false
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
