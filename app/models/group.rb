class Group < ApplicationRecord
  belongs_to :house
  has_many :tasks, dependent: :destroy
  belongs_to :user
end
