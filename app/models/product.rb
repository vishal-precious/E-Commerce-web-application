class Product < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  has_many :orders
  has_one_attached :image
  validates :image, presence: true
  validates :name,  presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
 
  def price_in_cents
    (price * 100).to_i
  end
  
end
