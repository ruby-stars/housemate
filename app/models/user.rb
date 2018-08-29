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
<<<<<<< HEAD
    mates.any?
  end

  def house_manager?
    mates.any? { |mate| mate.house_manager? }
=======
  mates.any?
  end

  def house_manager?
  mates.any? { |mate| mate.house_manager? }
>>>>>>> 90d4444aeea8b53ff846541249952bbe2718ae39
  end
end
