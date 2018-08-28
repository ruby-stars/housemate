class AddRolesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :house_owner, :boolean, default: false
    add_column :users, :house_mate, :boolean, default: false
    add_column :users, :user, :boolean, default: true
  end
end
