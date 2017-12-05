class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :street
      t.integer :number
      t.string :additionalinfo
      t.integer :postalcode
      t.string :city
      t.text :about

      t.timestamps
    end
  end
end
