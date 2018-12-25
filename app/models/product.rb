class Product < ApplicationRecord
  mount_uploaders :images, ImageUploader

  validates :name, :price, :images, presence: true

  attribute :discount, :float, default: 0

  def discounted_price
    price = self.price * (1 - (self.discount / 100))
    price.round(2)
  end
end
