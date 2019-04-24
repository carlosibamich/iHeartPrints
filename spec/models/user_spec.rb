require 'rails_helper'

describe User, type: :model do
  context "when users want to create an account" do
    it "should not validate users without an email address" do
      @user = FactoryBot.build(:user, email: "not_valid_email")
      expect(@user).not_to be_valid
    end
  end
end
