FactoryBot.define do

	factory :mate do
		house
		user

		factory :house_manager do
			house_manager { true }
		end
	end

  # factory :mate, :parent => :house do |house|
  # 	house.after_create { |h| Factory(:user, :house => h) }
  # end
end
