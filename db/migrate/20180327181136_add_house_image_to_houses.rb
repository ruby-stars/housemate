class AddHouseImageToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :HouseImage, :string
  end
end
