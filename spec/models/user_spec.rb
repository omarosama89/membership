require 'spec_helper'
require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end
  it "is invalid with a wrong email format" do
    expect(FactoryBot.build(:user, email: Faker::Name.name)).to be_invalid
  end
  it "is invalid without an email" do
    expect(FactoryBot.build(:user, email: nil)).to be_invalid
  end
  it "is invalid without a password" do
    expect(FactoryBot.build(:user, password: nil)).to be_invalid
  end
  it "is invalid without a role" do
    expect(FactoryBot.build(:user, role: nil)).to be_invalid
  end
end