class DropJoinTableUsersHouses < ActiveRecord::Migration[5.1]
  def change
  drop_table :houses_users
  end
end
