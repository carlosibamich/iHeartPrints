require 'rails_helper'

describe OrdersController, type: :controller do
  let(:user1) { FactoryBot.create(:user) }
  let(:user2) { FactoryBot.create(:user) }

  describe "GET #index" do
    context "when a user is not logged in" do
      it "cannot access orders page" do
        get :index, params: { id: user2.id }
        expect(response).not_to be_ok
      end
    end

    context "when a user is logged in" do
      before do
        sign_in user2
      end
      it "can access personal orders page" do
        get :index, params: { id: user2.id }
        expect(response).to be_ok
      end
    end
  end
end
