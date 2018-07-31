class AddUserIdToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :user_id, :integer
  end
end
