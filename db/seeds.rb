# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Add admin user
User.create(email: 'admin@honestbee.com', password: '12345678', password_confirmation: '12345678', role: 'admin')

# Add 2 normal user
User.create(email: 'normal@honestbee.com', password: '12345678', password_confirmation: '12345678', role: 'normal')
user = User.create(email: 'normal2@honestbee.com', password: '12345678', password_confirmation: '12345678', role: 'normal')

# Add premium membership for user `normal2@honestbee.com`
PremiumMembership.create(user: user)

# Add 6 products
(0..11).to_a.each do |idx|
  Product.create(name: "product-#{idx}", price: (rand() * 100).to_f.round(2), discount: (rand * 100).to_i, images: (0..9).map(&:to_s).map{|x| "p#{x}.jpg"}.map{|x| Rack::Test::UploadedFile.new(Rails.root.join("spec/support/#{x}"), 'image/jpeg')}.sample([3,4,5,6,7].sample))
end
