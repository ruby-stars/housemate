class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :groups
  has_many :tasks
  has_many :mates
  has_many :houses, through: :mates

  mount_uploader :avatar, AvatarUploader

  def house_mate?
    mates.any?
  end

  def house_manager?
    mates.any? {|mate| mate.house_manager? }
  end

  def managed_houses
    array = []
    mates.each do |mate|
      array << mate.house if mate.house_manager?
    end
    array
  end
end
