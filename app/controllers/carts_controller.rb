class CartsController < ApplicationController
  def index
    @cart_items = current_user.carts.first.cart_items
  end

  def addproduct
    if current_user.carts.present?
      @cart_item = current_user.carts.first.cart_items.new(product_id: params[:id])
    else
      cart = current_user.carts.create
      @cart_item = cart.first.cart_items.new(product_id: params[:id])
    end
    @cart_item.save 
    redirect_to carts_path
  end

  def removeproduct
    @cart_item = CartItem.find_by(id: params[:id])
    @cart_item.destroy
    redirect_to carts_path
  end
end
