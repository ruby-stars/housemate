# frozen_string_literal: true

FactoryBot.define do
  factory :mate do
    house
    user

    factory :house_manager do
      house_manager { true }
    end
  end
end
