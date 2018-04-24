class CreateJoinTableUsersHouses < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :houses do |t|
      # t.index [:user_id, :house_id]
      t.index [:house_id, :user_id]
    end
  end
end
