class House < ApplicationRecord
  has_many :groups
  belongs_to :user

  mount_uploader :HouseImage, HouseImageUploader
end
