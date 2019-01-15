require 'rails_helper'

describe House do
  context "user and house is present" do
  	let(:house) {FactoryBot.build(:house)}
  	let(:user1) {FactoryBot.build(:user, email: "email@email", password: "spohesgho")}
  	let(:user2) {FactoryBot.build(:user, email: "eeopf@email", password: "eso8zfesf")}
  	let(:mate1) {Mate.create!(house: house, user: user1) }
  	let(:mate2) {Mate.create!(house: house, user: user2, house_manager: true) }

  	it "returns user who is house manager" do
  		require 'pry';binding pry
  		expect(house.house_manager).to eq mate2
  	end

  end
end
