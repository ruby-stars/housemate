require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user1) {FactoryBot.create(:user)}
  let(:user2) {FactoryBot.create(:user)}

  describe "GET #index" do
    #context "When user is logged in" do... --> no authentication for users_controller yet!!

    it "loads all users and renders index template" do
      get :index
      expect(response).to be_ok
      expect(assigns(:users)).to eq [user1, user2]
      expect(response).to render_template('index')
    end
  end

  describe "GET #show" do
    #context "When user is logged in" do... --> no authentication for users_controller yet!!

    it "finds correct user and renders show template" do
      get :show, params: {id: user1.id}
      expect(response).to be_ok
      expect(assigns(:user)).to eq user1
      expect(response).to render_template('show')
    end
  end

  describe "GET #dashboard" do
    #context "When user is logged in" do... --> no authentication for users_controller yet!!

    it "finds correct user and renders dashboard template" do
      get :dashboard, params: {id: user2.id}
      expect(response).to be_ok
      expect(assigns(:user)).to eq user2
      expect(response).to render_template('dashboard')
    end
  end

end
