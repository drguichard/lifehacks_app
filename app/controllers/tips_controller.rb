class TipsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show]

  def index
  	@tips = Tip.all
  	@domain = Domain.find_by(id:params[:id])
  	@topic = Topic.find_by(id:params[:id])
    @user = User.find_by(id:params[:id])
  end

  def show
  	@ctip = Tip.find_by(id:params[:id])
  	@domain = Domain.find_by(id:params[:id])
  	@topic = Topic.find_by(id:params[:id])
  end
end
