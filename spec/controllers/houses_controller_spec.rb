# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HousesController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:house) { FactoryBot.create(:house) }
  let(:house_manager) { FactoryBot.create(:house_manager, house: house, user: user) }

  context 'when user is not logged in' do
    # tbc
  end

  context 'when user is logged in' do
    before do
      sign_in user
    end

    describe 'GET #index' do
      it 'loads all houses and renders the index template' do
        get :index
        expect(assigns(:houses)).to eq [house]
        expect(response).to be_ok
        expect(response).to render_template('index')
      end
    end

    describe 'GET #show' do
      it 'loads correct house and renders the show template' do
        get :show, params: { id: house.id }
        expect(assigns(:house)).to eq house
        expect(response).to be_ok
        expect(response).to render_template('show')
      end
    end

    describe 'GET #new' do
      it 'renders the houses/new template' do
        get :new
        expect(response).to be_ok
        expect(response).to render_template('new')
      end
    end

    describe 'POST #create' do
      it 'should save the new house to the database' do
        expect do
          post :create, params: { house: { name: 'Any Name' } }
        end.to change(House, :count).by(1)
      end

      it 'should redirect to the house#show page' do
        post :create, params: { house: { name: 'Any Name' } }
        expect(response).to redirect_to House.last
      end
    end

    describe 'GET #edit' do
      context 'when user is not house_manager' do
        it 'redirects to houses path' do
          get :edit, params: { id: house.id }
          expect(response).to have_http_status(302)
          expect(response).to redirect_to(houses_path)
        end
      end

      context 'when user is house_manager' do
        before do
          house_manager
        end

        it 'loads correct house and renders the edit template' do
          get :edit, params: { id: house.id }
          expect(assigns(:house)).to eq house
          expect(response).to be_ok
          expect(response).to render_template('edit')
        end
      end
    end

    describe 'PATCH/PUT #update' do
      context 'when user is not house_manager' do
        it 'redirects to house show page' do
          put :update, params: { id: house.id, house: { name: 'New name' } }
          expect(response).to have_http_status(302)
          expect(response).to redirect_to(house)
        end
      end

      context 'when user is house_manager' do
        before do
          house_manager
        end

        it 'loads correct house' do
          put :update, params: { id: house.id, house: { name: 'New name' } }
          expect(assigns(:house)).to eq house
        end

        it "changes house's attributes" do
          put :update, params: { id: house.id, house: { name: 'New name' } }
          house.reload
          expect(house.name).to eq('New name')
        end

        it 'redirects to house index page' do
          put :update, params: { id: house.id, house: { name: 'New name' } }
          expect(response).to redirect_to house
        end
      end
    end

    describe 'DELETE #destroy' do
      context 'when user is not house_manager' do
        it 'redirects to houses path' do
          delete :destroy, params: { id: house.id }
          expect(response).to have_http_status(302)
          expect(response).to redirect_to(houses_path)
        end
      end

      context 'when user is house_manager' do
        before do
          house_manager
        end

        it 'loads correct house' do
          delete :destroy, params: { id: house.id }
          expect(assigns(:house)).to eq house
        end

        it 'deletes house from database' do
          expect do
            delete :destroy, params: { id: house.id }
          end.to change(House, :count).by(-1)
        end

        it 'redirects to houses path' do
          delete :destroy, params: { id: house.id }
          expect(response).to redirect_to houses_path
        end
      end
    end
  end
end
