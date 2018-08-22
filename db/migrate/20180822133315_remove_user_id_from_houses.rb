class RemoveUserIdFromHouses < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :user_id, :integer
  end
end
