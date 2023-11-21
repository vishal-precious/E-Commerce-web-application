class UserDetailsController < ApplicationController

  def new 
    @user_detail = UserDetail.new
  end

  def create 
    @user_detail = UserDetail(user_params.merge(user_id: current_user.id))
  end

  private 
  def user_params
    params(:user_details).permit(:role, :address, :landmark, :number)
  end
  
end
