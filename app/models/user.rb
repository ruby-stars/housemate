class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :houses, through: :mates
  has_many :groups
  has_many :tasks
  has_many :mates

  def house_mate?
    mates.any?
  end

  def house_manager?
    mates.any? { |mate| mate.house_manager? }
  end
end
