class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :nickname, :string
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :bio, :text
  	add_column :users, :birthday, :date
  	add_column :users, :avatar, :string

  end
end
