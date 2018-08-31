class DropGroupTaskTable < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    drop_table :groups_tasks
    add_column :tasks, :group_id, :integer
=======
  drop_table :groups_tasks
  add_column :tasks, :group_id, :integer
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
