# frozen_string_literal: true

class Mate < ApplicationRecord
  belongs_to :house
  belongs_to :user
end
