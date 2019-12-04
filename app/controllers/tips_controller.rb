class TipsController < ApplicationController
  def index
  	@tips = Tip.all
  	@domain = Domain.find_by(id:params[:id])
  	@topic = Topic.find_by(id:params[:id])
  end

  def show
  	@tip = Tip.find_by(id:params[:id])
  	@domain = Domain.find_by(id:params[:id])
  	@topic = Topic.find_by(id:params[:id])
  end
end
