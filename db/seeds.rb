# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do |i|
  puts "Creating House/User #{i}"
  u = User.create(email: "user_#{i}@example.com", password: '1234567890')
  h = House.create(name: "House #{i}")
  Mate.create(user_id: u.id, house_id: h.id, house_manager: true)
end
