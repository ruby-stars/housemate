class Group < ApplicationRecord
  belongs_to :house
  has_many :tasks
  belongs_to :user
end
