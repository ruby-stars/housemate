class RemoveImageToHouses < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :image, :file_field
  end
end
