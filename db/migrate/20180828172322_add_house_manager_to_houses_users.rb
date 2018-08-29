class AddHouseManagerToHousesUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :houses_users, :house_manager, :boolean, default: false
  end
end
