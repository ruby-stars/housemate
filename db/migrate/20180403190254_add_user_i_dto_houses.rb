class AddUserIDtoHouses < ActiveRecord::Migration[5.1]
  def change
  	add_column :houses, :user_id, :integer
  end
end
