FactoryBot.define do
  factory :mate, :parent => :house do |house|
  	house.after_create { |h| Factory(:user, :house => h) }
  end
end
