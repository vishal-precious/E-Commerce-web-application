class UserDetailsController < ApplicationController

  def index
  end

  def new 
    @user_detail = UserDetail.new
  end

  def create 
    @user_detail = UserDetail.new(user_detail_params.merge(user_id: current_user.id))
    if @user_detail.save 
      redirect_to new_product_path
    else
      redirect_to new_user_detail_path
    end
  end

  private 
  def user_detail_params
    params.require(:user_detail).permit(:name, :surname, :role, :address, :city, :number, :state, :zip, :email, :landmark)
  end
  
end
