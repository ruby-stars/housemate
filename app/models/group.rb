class Group < ApplicationRecord
  belongs_to :house
  has_and_belongs_to_many :users
  has_and_belongs_to_many :tasks
end
