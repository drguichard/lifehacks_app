class DashboardController < ApplicationController

  def edit
  end

  def update
  end

  def show
  	  @user = current_user
  end

  def delete
  end

      private

  #def user_params
  #  params.require(:user).permit(:first_name, :last_name, :email)
  #end

end
