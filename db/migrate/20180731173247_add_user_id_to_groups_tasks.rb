class AddUserIdToGroupsTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :groups_tasks, :user_id, :integer
  end
end
