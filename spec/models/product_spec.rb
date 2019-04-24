require 'rails_helper'

describe Product, type: :model do
  context "when the product has comments" do
    let(:product) { FactoryBot.create(:product) }
    let(:user) { FactoryBot.create(:user) }

    before do
      product.comments.create!( rating: 1, user: user, body: "Me no likey.")
      product.comments.create!( rating: 3, user: user, body: "Pretty nice painting.")
      product.comments.create!( rating: 5, user: user, body: "Love Warhol's Marilyns!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end

    it "is not valid without a name" do
      expect(Product.new(description: "Nice painting")).not_to be_valid
    end
  end
end
