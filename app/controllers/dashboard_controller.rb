# frozen_string_literal: true

class DashboardController < ApplicationController
  def edit
    @user = current_user
    @tip = Tip.find_by(id: params[:id])
  end

  def update
    @user = current_user
    @user.update(user_params)
    flash[:success] = 'La modification est appliquée'
    redirect_to dashboard_show_path(@user.id)
  end

  def show
    @user = current_user
    @tips = Tip.where(user_id: current_user.id)
    @topics = Topic.where(user_id: current_user.id)
    @domains = Domain.where(user_id: current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:user_id, :photo, :first_name, :last_name, :description)
  end
end
