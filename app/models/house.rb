class House < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :mates, dependent: :delete_all
  has_many :users, through: :mates

  mount_uploader :HouseImage, HouseImageUploader

  def house_manager
  	mates.find {|mate| mate.house_manager?}.user
  end

end
