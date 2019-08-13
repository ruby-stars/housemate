# frozen_string_literal: true

FactoryBot.define do
  sequence :email do |n|
    "email#{n}@test.com"
  end

  factory :user do
    email
    password { '1234567890' }
  end
end
