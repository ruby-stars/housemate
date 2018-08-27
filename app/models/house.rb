class House < ApplicationRecord
  has_many :groups
  has_and_belongs_to_many :users #, class_name: "User"
  #has_and_belongs_to :house_manager, class_name: "User"

  mount_uploader :HouseImage, HouseImageUploader
end
