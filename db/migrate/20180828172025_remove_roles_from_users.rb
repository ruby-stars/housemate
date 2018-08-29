class RemoveRolesFromUsers < ActiveRecord::Migration[5.1]
  def change
  remove_column :users, :admin, :boolean
  remove_column :users, :house_manager, :boolean
  remove_column :users, :house_mate, :boolean
  remove_column :users, :user, :boolean
  end
end
