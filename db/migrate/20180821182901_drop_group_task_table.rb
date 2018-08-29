class DropGroupTaskTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :groups_tasks
    add_column :tasks, :group_id, :integer
  end
end
