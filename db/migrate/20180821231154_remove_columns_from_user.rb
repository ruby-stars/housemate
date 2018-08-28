class RemoveColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :house_owner_role, :boolean
  	remove_column :users, :house_mate_role, :boolean
  	remove_column :users, :admin_role, :boolean
  	remove_column :users, :user_role, :boolean
  end
end
