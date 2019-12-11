class DashboardController < ApplicationController

  def edit
  	 @user = current_user
  end

  def update
  end

  def show
  	  @user = current_user
      @tips = Tip.where(:user_id => current_user.id)
      @topics = Topic.where(:user_id => current_user.id)
      @domains = Domain.where(:user_id => current_user.id)
  end


 private

 # def user_params
 #   params.require(:user).permit(:user_id)
 # end
#


end
