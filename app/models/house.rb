class House < ApplicationRecord
  has_many :groups

  mount_uploader :HouseImage, HouseImageUploader
end
