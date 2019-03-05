require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User(s) and house exist and house has mates" do
    let(:house) {FactoryBot.create(:house)}
    let(:user1) {FactoryBot.create(:user)}
    let(:user2) {FactoryBot.create(:user)}
    let(:user3) {FactoryBot.create(:user)}
    let(:house_mate) {FactoryBot.create(:mate, house: house, user: user1)}
    let(:house_manager) {FactoryBot.create(:house_manager, house: house, user: user2)}

    before do
      house_mate
      house_manager
    end

    context "when the given user is a member of any house" do
      it "checks if a user is a member of any house" do
        expect(user1.house_mate?).to be true
        expect(user2.house_mate?).to be true
      end
    end

    context "when the given user is not a member of any house" do
      it "checks if a user is a member of any house" do
        expect(user3.house_mate?).to be false
      end
    end

    context "when the given user is a manager of any house" do
      it "checks if a user is a manager of any house" do
        expect(user2.house_manager?).to be true
      end
    end

    context "when the given user is not a manager of any house" do
      it "checks if a user is a manager of any house" do
        expect(user1.house_manager?).to be false
        expect(user3.house_manager?).to be false
      end
    end
  end
end
