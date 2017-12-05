class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :about
      t.references :house

      t.timestamps
    end
  end
end
