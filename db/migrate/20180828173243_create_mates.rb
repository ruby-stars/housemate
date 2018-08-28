class CreateMates < ActiveRecord::Migration[5.1]
  def change
    rename_table :houses_users, :mates
  end
end
