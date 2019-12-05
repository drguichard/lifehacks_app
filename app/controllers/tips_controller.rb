class TipsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show]

  def index
  	@tips = Tip.all
  end

  def show
  	@tip = Tip.find_by(id:params[:id])
  	@domain = Domain.find_by(id:params[:id])
  	@topic = Topic.find_by(id:params[:id])
  end

  def edit
    @tip = Tip.find(params[:id])
  end

  def update
    @tip = Tip.find(params[:id])
    tip_params = params.require(:tip).permit(:name, :content, :photo)
    @tip.update(tip_params)
    redirect_to tips_path
  end
end
