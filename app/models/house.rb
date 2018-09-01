class House < ApplicationRecord
  has_many :groups
  has_many :users, through: :mates
  has_many :mates

  mount_uploader :HouseImage, HouseImageUploader

  def house_manager
  	mates.find{ |mate| mate.house_manager?}.user
  end

end
