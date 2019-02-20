require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user1) {FactoryBot.create(:user)}
  let(:user2) {FactoryBot.create(:user)}
  #let(:admin) {FactoryBot.create(:user, admin: true)} --> no admin flag added yet

  describe "GET #index" do

    context "When no user is logged in" do
      it "redirects to houses_path" do
        get :index
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(houses_path)
      end
    end

    context "When a user is logged in" do
      before do
        sign_in user1
      end

      it "redirects to houses_path" do
        get :index
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(houses_path)
      end
    end

    # context "When admin user is logged in" do
    #   before do
    #     sign_in admin
    #   end

    #   it "loads all users and renders index template" do
    #     get :index
    #     expect(response).to be_ok
    #     expect(assigns(:users)).to eq [user1, user2, admin]
    #     expect(response).to render_template('index')
    #   end
    # end
  end

  describe "GET #show" do
    context "When no user is logged in" do
      it "redirects to houses_path" do
        get :show, params: {id: user1.id}
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(houses_path)
      end
    end

    context "User is logged in" do
      before do
        sign_in user1
      end

      context "User tries to access his own record" do
        it "finds correct user and renders show template" do
          get :show, params: {id: user1.id}
          expect(response).to be_ok
          expect(assigns(:user)).to eq user1
          expect(response).to render_template('show')
        end
      end

      context "User tries to access another user's record" do
        it "redirects to houses_path" do
          get :show, params: {id: user2.id}
          expect(response).to have_http_status(302)
          expect(response).to redirect_to(houses_path)
        end
      end
    end

    # context "When admin user is logged in" do
    #   before do
    #     sign_in admin
    #   end

    #   it "finds correct user and renders show template" do
    #     get :show, params: {id: user1.id}
    #     expect(response).to be_ok
    #     expect(assigns(:user)).to eq user1
    #     expect(response).to render_template('show')
    #   end
    # end
  end

  describe "GET #dashboard" do
    context "When no user is logged in" do
      it "redirects to houses_path" do
        get :show, params: {id: user1.id}
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(houses_path)
      end
    end
    
    context "User is logged in" do
      before do
        sign_in user2
      end

      context "User tries to access his own dashboard" do
        it "finds correct user and renders dashboard template" do
          get :dashboard, params: {id: user2.id}
          expect(response).to be_ok
          expect(assigns(:user)).to eq user2
          expect(response).to render_template('dashboard')
        end
      end

      context "User tries to access another user's dashboard" do
        it "redirects to houses_path" do
          get :show, params: {id: user1.id}
          expect(response).to have_http_status(302)
          expect(response).to redirect_to(houses_path)
        end
      end
    end

    # context "When admin user is logged in" do
    #   before do
    #     sign_in admin
    #   end

    #   it "finds correct user and renders dashboard template" do
    #     get :dashboard, params: {id: user1.id}
    #     expect(response).to be_ok
    #     expect(assigns(:user)).to eq user1
    #     expect(response).to render_template('dashboard')
    #   end
    # end
  end

end
