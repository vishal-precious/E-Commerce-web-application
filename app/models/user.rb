class User < ApplicationRecord
  # rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products 
  has_many :carts
  has_one :user_detail
  has_many :orders
  has_many :cards
  has_many :payments

  after_create :assign_customer_id
 
  def assign_customer_id
    user = User.last
    customer = Stripe::Customer.create(email: user.email)
    UserDetail.create(stripe_customer_id: customer.id, user_id: user.id)
  end
end
