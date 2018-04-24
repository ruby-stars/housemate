class House < ApplicationRecord
  has_many :groups
  belongs_to :user
  belongs_to :admin, class_name: "User"

  mount_uploader :HouseImage, HouseImageUploader
end
