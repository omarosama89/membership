FactoryBot.define do
  images_arr = (0..9).map(&:to_s)
    factory :product do
    name { Faker::Name.name }
    price { (rand() * 100).to_f.round(2) }
    images {(0..9).map(&:to_s).map{|x| "p#{x}.jpg"}.map{|x| Rack::Test::UploadedFile.new(Rails.root.join("spec/support/#{x}"), 'image/jpeg')}.sample([3,4,5,6,7].sample)}
    discount {(rand * 100).to_i}
  end
end