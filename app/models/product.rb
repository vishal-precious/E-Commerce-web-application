class Product < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  has_many :orders
  has_one_attached :image
  validates :image, presence: true
end
