class House < ApplicationRecord
  has_many :groups
  has_many :users, through: :mates
  has_many :mates

  mount_uploader :HouseImage, HouseImageUploader
end
