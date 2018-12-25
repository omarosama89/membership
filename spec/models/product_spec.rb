require 'spec_helper'
require 'rails_helper'

describe Product do
  it "has a valid factory" do
    expect(FactoryBot.build(:product)).to be_valid
  end
  it "is invalid without a name" do
    expect(FactoryBot.build(:product, name: nil)).to be_invalid
  end
  it "is invalid without a price" do
    expect(FactoryBot.build(:product, price: nil)).to be_invalid
  end
  it "is invalid without images" do
    expect(FactoryBot.build(:product, images: [])).to be_invalid
  end
  it "is invalid without a discount" do
    expect(FactoryBot.build(:product, discount: nil)).to be_invalid
  end
  it "is valid with a zero discount" do
    expect(FactoryBot.create(:product, discount: 0)).to be_valid
  end
end