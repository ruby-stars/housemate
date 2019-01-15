FactoryBot.define do
  factory :user do
  	association :mate, factory: :house
  end
end
