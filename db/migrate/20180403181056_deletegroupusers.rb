class Deletegroupusers < ActiveRecord::Migration[5.1]
  def change
  drop_table :groups_users
  end
end
