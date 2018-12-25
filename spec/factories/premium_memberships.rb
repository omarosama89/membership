FactoryBot.define do
  images_arr = (0..9).map(&:to_s)
    factory :premium_membership do
      user { create(:user) }
  end
end