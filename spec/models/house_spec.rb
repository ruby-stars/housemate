require 'rails_helper'

RSpec.describe House, type: :model do
  context "user and house is present" do
  	let(:test_house) {FactoryBot.create(:house)}
  	let(:user1) {FactoryBot.create(:user)}
  	let(:user2) {FactoryBot.create(:user)}
  	let(:house_mate) {FactoryBot.create(:mate, house: test_house, user: user1)}
  	let(:house_manager) {FactoryBot.create(:house_manager, house: test_house, user: user2)}

    before do
      house_mate
      house_manager
    end

  	it "returns user who is house manager" do
  		expect(test_house.house_manager).to eq user2
  	end

  end
end
