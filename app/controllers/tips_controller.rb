class TipsController < ApplicationController
  #before_action :authenticate_user!, only: [:new, :show]

  def index
  	@tips = Tip.all
  end

  def show
  	@tip = Tip.find_by(id:params[:id])
  end

  def edit
    @tip = Tip.find(params[:id])
  end

  def update
    @tip = Tip.find(params[:id])
    @tip.update(tip_params)
    redirect_to tip_path(@tip.id)
  end

  def new
    @tip = Tip.new
  end

  def create
    tip_data_user = tip_params.merge({'user_id' => current_user.id})
    tip = Tip.create(tip_data_user)
    redirect_to tip_path(tip.id)
  end

  def destroy
    @tip = Tip.find(params[:id])
    @tip.destroy
    redirect_to tips_path
  end

  private

  def tip_params
    params.require(:tip).permit(:name, :content, :photo, :topic_id)
  end

end
