class CreateJoinTableHousesUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :houses, :users do |t|
      t.references :house, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
