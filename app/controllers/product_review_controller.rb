class ProductReviewController < ApplicationController

  def show 
    ProductReview.find_by(product_id: params[])
  end

  def new 
    @product_review = ProductReview.new
  end

  def create 
    product = Product.find_by(id: params[:id])
    product_ review = product.product_reviews.create(product_review_params)
    if product_review.save 
      redirect_to product_path
    else
      render new_product_review_path
    end
  end

  
end
