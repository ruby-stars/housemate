class AddImageToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :image, :file_field
  end
end
