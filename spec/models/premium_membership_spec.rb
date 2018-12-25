require 'spec_helper'
require 'rails_helper'

describe PremiumMembership do
  it "has a valid factory" do
    expect(FactoryBot.build(:premium_membership)).to be_valid
  end
  it "is invalid without a user" do
    expect(FactoryBot.build(:premium_membership, user_id: nil)).to be_invalid
  end
end