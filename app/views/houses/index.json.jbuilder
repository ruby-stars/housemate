# frozen_string_literal: true

json.array! @houses, partial: 'houses/house', as: :house
