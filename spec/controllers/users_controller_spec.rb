require 'rails_helper'

describe UsersController, type: :controller do
  let(:user1) { User.create!(first_name: "Mister", last_name: "Magoo", email: "magoo@email.com", password: "mistermagoo") }
  let(:user2) { User.create!(first_name: "Leon", last_name: "Trotsky", email: "the.trotskerinno@email.com", password: "thetrotskerinno") }

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user1
      end
      it 'loads correct user details' do
        get :show, params: { id: user1.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq user1
      end
      it 'does not load incorrect user details' do
        get :show, params: { id: user2.id }
        expect(response).not_to be_ok
        expect(response).to redirect_to(root_path)
        expect(assigns(:user)).not_to eq user1
      end
    end

    context 'when a user is not logged in' do
      it 'redirects to home page' do
        get :show, params: { id: user1.id }
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
