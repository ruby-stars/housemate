class House < ApplicationRecord
  has_many :groups
  has_and_belongs_to_many :users
  belongs_to :house_owner, class_name: "User"

  mount_uploader :HouseImage, HouseImageUploader
end
